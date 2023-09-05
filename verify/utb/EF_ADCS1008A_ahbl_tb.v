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
    wire            EN;
    wire            dac_rst;

    real             VL = 0.0;
    real             VH = 2.048;
    real            VDD = 3.3;
    real            VSS = 0.0;
    real            DVDD = 1.8;
    real            DVSS = 0.0;
    
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
    
    initial begin
    force ADC_ANA.inp0 = in0;
    force ADC_ANA.inp1 = in1;
    force ADC_ANA.inp2 = in2;
    force ADC_ANA.inp3 = in3;
    force ADC_ANA.inp4 = in4;
    force ADC_ANA.inp5 = in5;
    end
    

    EF_ADCS1008A_ahbl muv (
        .cmp(cmp),
        .sample_n(sample_n),
        .ch_sel_out(ch_sel),
        .EN(EN),
        .dac_rst(dac_rst),
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
        .VIN(),
        .HOLD(sample_n),
        .B(ch_sel),
        .DATA(adc_data),
        .CMP(cmp),
        .RST(dac_rst),
        .EN(EN)
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