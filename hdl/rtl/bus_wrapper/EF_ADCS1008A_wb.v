
/*
	Copyright 2023 Efabless Corp.

	Author: Mohamed Shalan (mshalan@efabless.com)

	This file is auto-generated by wrapper_gen.py

	Licensed under the Apache License, Version 2.0 (the "License");
	you may not use this file except in compliance with the License.
	You may obtain a copy of the License at

	    http://www.apache.org/licenses/LICENSE-2.0

	Unless required by applicable law or agreed to in writing, software
	distributed under the License is distributed on an "AS IS" BASIS,
	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
	See the License for the specific language governing permissions and
	limitations under the License.

*/


`timescale			1ns/1ns
`default_nettype	none

`define		WB_BLOCK(name, init)	always @(posedge clk_i or posedge rst_i) if(rst_i) name <= init;
`define		WB_REG(name, init)		`WB_BLOCK(name, init) else if(wb_we & (adr_i==``name``_ADDR)) name <= dat_i;
`define		WB_ICR(sz)				`WB_BLOCK(ICR_REG, sz'b0) else if(wb_we & (adr_i==ICR_REG_ADDR)) ICR_REG <= dat_i; else ICR_REG <= sz'd0;

module EF_ADCS1008A_wb (
	input	wire 		cmp,
	output	wire 		sample_n,
	output	wire [2:0]	ch_sel_out,
	output	wire [9:0]	adc_data,
	output	wire 		EN,
	output	wire 		dac_rst,
	input	wire 		clk_i,
	input	wire 		rst_i,
	input	wire [31:0]	adr_i,
	input	wire [31:0]	dat_i,
	output	wire [31:0]	dat_o,
	input	wire [3:0]	sel_i,
	input	wire 		cyc_i,
	input	wire 		stb_i,
	output	reg 		ack_o,
	input	wire 		we_i,
	output	wire 		irq
);
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

	reg	[31:0]	TCTRL_REG;
	reg	[2:0]	CHSEL_REG;
	reg	[1:0]	CTRL_REG;
	reg	[0:0]	SOC_REG;
	reg	[31:0]	SEQCTRL0_REG;
	reg	[31:0]	SEQCTRL1_REG;
	reg	[4:0]	FIFOLEVEL_REG;
	reg	[2:0]	RIS_REG;
	reg	[2:0]	ICR_REG;
	reg	[2:0]	IM_REG;

	wire[7:0]	clkdiv	= TCTRL_REG[7:0];
	wire[7:0]	sample_div	= TCTRL_REG[15:8];
	wire[3:0]	swidth	= TCTRL_REG[19:16];
	wire[2:0]	ch_sel_in	= CHSEL_REG[2:0];
	wire		en	= CTRL_REG[0:0];
	wire		seq_en	= CTRL_REG[1:1];
	wire		soc	= SOC_REG[0:0];
	wire[4:0]	seq0	= SEQCTRL0_REG[4:0];
	wire[4:0]	seq1	= SEQCTRL0_REG[12:8];
	wire[4:0]	seq2	= SEQCTRL0_REG[20:16];
	wire[4:0]	seq3	= SEQCTRL0_REG[28:24];
	wire[4:0]	seq4	= SEQCTRL1_REG[4:0];
	wire[4:0]	seq5	= SEQCTRL1_REG[12:8];
	wire[4:0]	seq6	= SEQCTRL1_REG[20:16];
	wire[4:0]	seq7	= SEQCTRL1_REG[28:24];
	wire[9:0]	data;
	wire[9:0]	DATA_REG	= data;
	wire[4:0]	fifo_threshold	= FIFOLEVEL_REG[4:0];
	wire		fifo_full;
	wire		_FIFO_FULL_FLAG_	= fifo_full;
	wire		fifo_above;
	wire		_FIFO_LEVEL_FLAG_	= fifo_above;
	wire		eoc;
	wire		_EOC_FLAG_	= eoc;
	wire[2:0]	MIS_REG	= RIS_REG & IM_REG;
	wire		wb_valid	= cyc_i & stb_i;
	wire		wb_we	= we_i & wb_valid;
	wire		wb_re	= ~we_i & wb_valid;
	wire[3:0]	wb_byte_sel	= sel_i & {4{wb_we}};
	wire		_clk_	= clk_i;
	wire		_rst_	= rst_i;
	wire		rd	= (wb_re & (adr_i==DATA_REG_ADDR)  & ack_o);

	EF_ADCS1008A inst_to_wrap (
		.clk(_clk_),
		.rst_n(~_rst_),
		.swidth(swidth),
		.clkdiv(clkdiv),
		.sample_div(sample_div),
		.en(en),
		.cmp(cmp),
		.soc(soc),
		.dac_rst(dac_rst),
		.sample_n(sample_n),
		.eoc(eoc),
		.data(data),
		.adc_data(adc_data),
		.rd(rd),
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
		.fifo_full(fifo_full),
		.fifo_threshold(fifo_threshold),
		.fifo_above(fifo_above),
		.EN(EN)
	);

	always @ (posedge clk_i or posedge rst_i)
		if(rst_i) ack_o <= 1'b0;
		else
			if(wb_valid & ~ack_o)
				ack_o <= 1'b1;
			else
				ack_o <= 1'b0;

	`WB_REG(TCTRL_REG, 0)
	`WB_REG(CHSEL_REG, 0)
	`WB_REG(CTRL_REG, 0)
	`WB_REG(SOC_REG, 0)
	`WB_REG(SEQCTRL0_REG, 0)
	`WB_REG(SEQCTRL1_REG, 0)
	`WB_REG(FIFOLEVEL_REG, 0)
	`WB_REG(IM_REG, 0)

	`WB_ICR(3)

	always @ (posedge clk_i or posedge rst_i)
		if(rst_i) RIS_REG <= 32'd0;
		else begin
			if(_FIFO_FULL_FLAG_) RIS_REG[0] <= 1'b1; else if(ICR_REG[0]) RIS_REG[0] <= 1'b0;
			if(_FIFO_LEVEL_FLAG_) RIS_REG[1] <= 1'b1; else if(ICR_REG[1]) RIS_REG[1] <= 1'b0;
			if(_EOC_FLAG_) RIS_REG[2] <= 1'b1; else if(ICR_REG[2]) RIS_REG[2] <= 1'b0;

		end

	assign irq = |MIS_REG;

	assign	dat_o = 
			(adr_i == TCTRL_REG_ADDR) ? TCTRL_REG :
			(adr_i == CHSEL_REG_ADDR) ? CHSEL_REG :
			(adr_i == CTRL_REG_ADDR) ? CTRL_REG :
			(adr_i == SOC_REG_ADDR) ? SOC_REG :
			(adr_i == SEQCTRL0_REG_ADDR) ? SEQCTRL0_REG :
			(adr_i == SEQCTRL1_REG_ADDR) ? SEQCTRL1_REG :
			(adr_i == FIFOLEVEL_REG_ADDR) ? FIFOLEVEL_REG :
			(adr_i == RIS_REG_ADDR) ? RIS_REG :
			(adr_i == ICR_REG_ADDR) ? ICR_REG :
			(adr_i == IM_REG_ADDR) ? IM_REG :
			(adr_i == DATA_REG_ADDR) ? DATA_REG :
			(adr_i == MIS_REG_ADDR) ? MIS_REG :
			32'hDEADBEEF;

endmodule