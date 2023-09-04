/*
	Copyright 2023 Efabless Corp.

	Author: Mohamed Shalan (mshalan@efabless.com)
	
	Licensed under the Apache License, Version 2.0 (the "License"); 
	you may not use this file except in compliance with the License. 
	You may obtain a copy of the License at:
	http://www.apache.org/licenses/LICENSE-2.0
	Unless required by applicable law or agreed to in writing, software 
	distributed under the License is distributed on an "AS IS" BASIS, 
	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. 
	See the License for the specific language governing permissions and 
	limitations under the License.
*/
/*
    A testbench for EF_ADCS0808A: 8-channel, 8-bit SAR ADC with advanced controller and FIFO.
*/
module EF_ADCS1008A_tb;

    reg         clk, rst_n;
    reg [7:0]   clkdiv;
    reg [7:0]   sample_div;
    reg         en;
    wire        sample_n, cmp;
    wire        real vin;
    real        vref=3.3;
    wire [9:0]  data;
    wire [9:0]  adc_data;
    wire        eoc;
    reg         soc;
    reg [3:0]   swidth;

    wire [2:0]  ch_sel_out;
    reg [2:0]   ch_sel_in;
    reg [4:0]   seq0;
    reg [4:0]   seq1;
    reg [4:0]   seq2;
    reg [4:0]   seq3;
    reg [4:0]   seq4;
    reg [4:0]   seq5;
    reg [4:0]   seq6;
    reg [4:0]   seq7;
    reg         seq_en;

    reg         rd;

    wire        fifo_full;
    reg [4:0]   fifo_threshold;
    wire        fifo_above;

    real          in0 = 0.5;
    real          in1 = 1.0;
    real          in2 = 1.5;
    real          in3 = 2.0;
    real          in4 = 2.5;
    real          in5 = 3.0;
    real          in6 = 3.1;
    real          in7 = 3.2;

    // clock
    initial clk = 0;
    always #5 clk <= !clk;

    initial begin
        $dumpfile("EF_ADCS1008A_tb.vcd");
        $dumpvars;
    end

    initial begin
        rst_n = 0;
        clkdiv = 2;
        sample_div = 16;
        en = 1;
        soc = 0;
        swidth = 2;
        seq0 = 5'b00000;    // channel 0 - continue
        seq1 = 5'b00001;    // channel 1 - continue
        seq2 = 5'b00010;    // channel 2 - continue
        seq3 = 5'b10011;    // channel 3 - Stop
        seq_en = 1;
        ch_sel_in = 7;
        fifo_threshold = 5;
        rd = 0;
        #100;
        @(posedge clk); 
        rst_n = 1;
        #300;
        #4000;
        
        // Stop the sequencer
        @(posedge clk); 
        seq_en = 0;

        // Read the data from the FIFO
        repeat (8) begin
            @(posedge clk);
            rd = 1;
            $display("ADC data: %d", data);
            @(posedge clk);
            rd = 0;
        end

        #1000;
        @(posedge clk); 
        soc = 0;
        @(posedge clk); 
        soc = 1;
        #1000;
        $finish;
    end

    wire real VH = vref;
    wire real VL = 0.0;

    EF_ADCS1008NC DAC_ANA (
        .VDD(VDD),
        .VSS(VSS),
        .DVDD(DVDD),
        .DVSS(DVSS),
        .VH(VH),
        .VL(VL),
        .in0(in0),
        .in1(in1),
        .in2(in2),
        .in3(in3),
        .in4(in4),
        .in5(in5),
        .in6(in6),
        .in7(in7),
        .hold(sample_n),
        .b0(ch_sel_out[0]),
        .b1(ch_sel_out[1]),
        .b2(ch_sel_out[2]),
        .data(adc_data),
        .cmp(cmp)
);

    EF_ADCS1008A ADC_CTRL (
        .clk(clk),
        .rst_n(rst_n),
        .clkdiv(clkdiv),
        .sample_div(sample_div),
        .en(en),
        .sample_n(sample_n),
        .data(data),
        .adc_data(adc_data),
        .cmp(cmp),
        .soc(soc),
        .eoc(eoc),
        .swidth(swidth),
        .ch_sel_out(ch_sel_out),
        .ch_sel_in(ch_sel_in),
        .seq0(seq0),
        .seq1(seq1),
        .seq2(seq2),
        .seq3(seq3),
        .seq4(seq4),
        .seq5(seq5),
        .seq6(seq6),
        .seq7(seq7),
        .seq_en(seq_en),
        .rd(rd),
        .fifo_full(fifo_full),
        .fifo_threshold(fifo_threshold),
        .fifo_above(fifo_above)
    );
endmodule
