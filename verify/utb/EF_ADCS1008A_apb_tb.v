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

`timescale		1ns/1ps

`default_nettype	none

`define			APB_AW			16
`define			MS_TB_SIMTIME		1_000_000

`include		"tb_macros.vh"

module EF_ADCS1008A_apb_tb;
	// Change the following parameters as desired
	parameter real CLOCK_PERIOD = 25.0;
	parameter real RESET_DURATION = 999.0;

	// DON NOT Change the following parameters
	localparam [`APB_AW-1:0]
			TCTRL_REG_ADDR = `APB_AW'h0000,
			CHSEL_REG_ADDR = `APB_AW'h0004,
			CTRL_REG_ADDR = `APB_AW'h0008,
			SOC_REG_ADDR = `APB_AW'h000c,
			SEQCTRL0_REG_ADDR = `APB_AW'h0010,
			SEQCTRL1_REG_ADDR = `APB_AW'h0014,
			DATA_REG_ADDR = `APB_AW'h0018,
			FIFOLEVEL_REG_ADDR = `APB_AW'h001c,
			ICR_REG_ADDR = `APB_AW'h0f00,
			RIS_REG_ADDR = `APB_AW'h0f04,
			IM_REG_ADDR = `APB_AW'h0f08,
			MIS_REG_ADDR = `APB_AW'h0f0c;
	
    `TB_APB_SIG

    wire            cmp;
    wire            sample_n;
    wire[2:0]       ch_sel_out;
    wire[11:0]      adc_data;
    wire            EN;
    wire            dac_rst;

    real            VL = 0.0;
    real            VH = 2.048;
    real            VDD = 3.3;
    real            VSS = 0.0;
    real            DVDD = 1.8;
    real            DVSS = 0.0;

    `TB_CLK(PCLK, CLOCK_PERIOD)
	`TB_ESRST(PRESETn, 1'b0, PCLK, RESET_DURATION)
	`TB_DUMP("APB_EF_ADCS1008A_tb.vcd", EF_ADCS1008A_apb_tb, 0)
	`TB_FINISH(`MS_TB_SIMTIME)
    


    real            in0 = 0.5;
    real            in1 = 1.0;
    real            in2 = 1.5;
    real            in3 = 2.0;
    real            in4 = 1.9;
    real            in5 = 1.7;
    real            in6 = 1.0;
    real            in7 = 0.5;
 
    EF_ADCS1008A_apb muv (
		`TB_APB_SLAVE_CONN,
        .cmp(cmp),
        .sample_n(sample_n),
        .ch_sel_out(ch_sel_out),
        .adc_data(adc_data),
        .EN(EN),
        .dac_rst(dac_rst)
    );

	`include "apb_tasks.vh"
  
EF_ADCS1008NC ADC_ANA (
`ifdef USE_POWER_PINS
        .VDD(VDD),
        .VSS(VSS),
        .DVDD(DVDD),
        .DVSS(DVSS),
`endif
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
        .HOLD(sample_n),
        .B(ch_sel_out),
        .DATA(adc_data),
        .CMP(cmp),
        .RST(dac_rst),
        .EN(EN)
    );


    reg [31:0] data;
    initial begin
        #999 -> e_assert_reset;
		@(e_reset_done);
        
        $display("TB: Configure the ADC controller");
        APB_W_WRITE(TCTRL_REG_ADDR, 32'h0000_20_02);
        APB_W_WRITE(SEQCTRL0_REG_ADDR, 32'h03_02_01_00);
        APB_W_WRITE(SEQCTRL1_REG_ADDR, 32'h00_00_00_14);
        APB_W_WRITE(FIFOLEVEL_REG_ADDR, 32'h5);
        APB_W_WRITE(IM_REG_ADDR, 32'h02);
        APB_W_WRITE(CTRL_REG_ADDR, 32'h3);
        
        // wait for IRQ to fire
        wait(IRQ==1);
        APB_W_READ(MIS_REG_ADDR, data);
        $display("Got an interrupt; MIS: %x", data);
        $display("Reading ADC data");
        repeat(5) begin
            APB_W_READ(DATA_REG_ADDR, data);
            $display("0x%x (%0d)\t%f", data, data, (2.048*data/4096.0));
        end
        // clear the interrupts
        APB_W_WRITE(ICR_REG_ADDR, 32'h02);
        wait(IRQ==0);
        
        // wait for the IRQ to read again
        wait(IRQ==1);
        $display("Cleared the interrupt.\nReading ADC data");
        repeat(5) begin
            APB_W_READ(DATA_REG_ADDR, data);
            $display("0x%x (%0d)\t%f", data, data, (2.048*data/4096.0));
        end

        #100_000;
        $display("TB: Configure the ADC controller with higher sampling rate");
        APB_W_WRITE(TCTRL_REG_ADDR, 32'h0000_05_01);
        APB_W_WRITE(SEQCTRL0_REG_ADDR, 32'h03_02_01_00);
        APB_W_WRITE(SEQCTRL1_REG_ADDR, 32'h00_00_00_14);
        APB_W_WRITE(FIFOLEVEL_REG_ADDR, 32'h5);
        APB_W_WRITE(IM_REG_ADDR, 32'h02);
        APB_W_WRITE(CTRL_REG_ADDR, 32'h3);
        
        // wait for IRQ to fire
        wait(IRQ==1);
        APB_W_READ(MIS_REG_ADDR, data);
        $display("Got an interrupt; MIS: %x", data);
        $display("Reading ADC data");
        repeat(5) begin
            APB_W_READ(DATA_REG_ADDR, data);
            $display("0x%x (%0d)\t%f", data, data, (2.048*data/4096.0));
        end
        // clear the interrupts
        APB_W_WRITE(ICR_REG_ADDR, 32'h02);
        wait(IRQ==0);
        
        // wait for the IRQ to read again
        wait(IRQ==1);
        $display("Cleared the interrupt.\nReading ADC data");
        repeat(5) begin
            APB_W_READ(DATA_REG_ADDR, data);
            $display("0x%x (%0d)\t%f", data, data, (2.048*data/4096.0));
        end
        $finish;
    end


endmodule