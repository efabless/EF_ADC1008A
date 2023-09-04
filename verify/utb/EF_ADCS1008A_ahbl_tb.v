/*
	Copyright 2020 Efabless Corp.

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

`timescale              1ns/1ps

module EF_ADCS1008A_ahbl_tb;
    wire[3:0]       dio;
    reg            HCLK = 0;
    reg            HRESETn = 0;
    reg            HSEL = 1;
    reg [31:0]     HADDR;
    reg [31:0]     HWDATA;
    reg [1:0]      HTRANS = 0;
    reg            HWRITE = 0;
    reg [2:0]      HSIZE;
    wire           HREADY;
    wire           HREADYOUT;
    wire [31:0]    HRDATA;
    
    wire            irq;

    real             VL = 0.0;
    real             VH = 2.048;
    
    `include "AHB_tasks.vh"

    wire            cmp;
    wire            sample_n;
    wire[2:0]       ch_sel;
    wire[9:0]       adc_data;

    real            in0 = 0.5;
    real            in1 = 1.0;
    real            in2 = 1.5;
    real            in3 = 2.0;
    real            in4 = 2.5;
    real            in5 = 3.0;
    real            in6 = 3.1;
    real            in7 = 3.2;

    EF_ADCS1008A_ahbl muv (
        .cmp(cmp),
        .sample_n(sample_n),
        .ch_sel_out(ch_sel),
        .adc_data(adc_data),
	    .HCLK(HCLK),
        .HRESETn(HRESETn),
        .HSEL(HSEL),
        .HADDR(HADDR),
        .HWDATA(HWDATA),
        .HTRANS(HTRANS),
        .HSIZE(HSIZE),
        .HWRITE(HWRITE),
        .HREADY(HREADY),
        .HREADYOUT(HREADYOUT),
        .HRDATA(HRDATA),
	    .irq(irq)
    );

EF_ADCS1008NC ADC_ANA (
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
        .b0(ch_sel[0]),
        .b1(ch_sel[1]),
        .b2(ch_sel[2]),
        .data(adc_data),
        .cmp(cmp)
    );
    
    initial begin
        $dumpfile("EF_ADCS1008A_ahbl_tb.vcd");
        $dumpvars;
        #999;
        @(posedge HCLK)
            HRESETn <= 1;
        #100_000 $finish;
    end

    always #25 HCLK = ~HCLK;
    
	localparam[15:0] TCTRL_REG_ADDR = 16'h0000;
	localparam[15:0] CHSEL_REG_ADDR = 16'h0004;
	localparam[15:0] CTRL_REG_ADDR = 16'h0008;
	localparam[15:0] SOC_REG_ADDR = 16'h000c;
	localparam[15:0] SEQCTRL0_REG_ADDR = 16'h0010;
	localparam[15:0] SEQCTRL1_REG_ADDR = 16'h0014;
	localparam[15:0] DATA_REG_ADDR = 16'h0018;
	localparam[15:0] FIFOLEVEL_REG_ADDR = 16'h001c;
	localparam[15:0] ICR_REG_ADDR = 16'h0f00;
	localparam[15:0] RIS_REG_ADDR = 16'h0f04;
	localparam[15:0] IM_REG_ADDR = 16'h0f08;
	localparam[15:0] MIS_REG_ADDR = 16'h0f0c;

    initial begin
        @(posedge HRESETn);
        #999;
        
        $display("TB: Configure the ADC controller");
        AHB_WRITE_WORD(TCTRL_REG_ADDR, 32'h0000_20_02);
        AHB_WRITE_WORD(SEQCTRL0_REG_ADDR, 32'h03_02_01_00);
        AHB_WRITE_WORD(SEQCTRL1_REG_ADDR, 32'h00_00_00_14);
        AHB_WRITE_WORD(FIFOLEVEL_REG_ADDR, 32'h5);
        AHB_WRITE_WORD(CTRL_REG_ADDR, 32'h3);
        

        #100_000;
        $finish;
    end

    assign HREADY = HREADYOUT;


endmodule