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
    Sequencer: up to 8 steps; all written to a FIFO (depth=16)
        - Every step: Channel number, Nop and End
    SoC: Timer, EoC or SW
    Sample time is programmable
    Interrupt sources: 
        - Fifo is full 
        - Fifo threshold
        - EoC
*/

`timescale			1ns/1ns
`default_nettype	none

module clock_divider_adc #(parameter CLKDIV_WIDTH = 8)(
    input wire clk,
    input wire rst_n,
    input wire en,
    input wire [CLKDIV_WIDTH-1:0] clkdiv,
    output wire clko
);
    reg [CLKDIV_WIDTH-1:0] clkdiv_ctr;
    
    reg clken;

    // Clock Divider
    wire clkdiv_match = (clkdiv_ctr == clkdiv);
    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            clkdiv_ctr <= 'b0;
        else 
            if(clkdiv_match)
                clkdiv_ctr <= 'b0;
            else if(en)
                clkdiv_ctr <= clkdiv_ctr + 'b1;
    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            clken <= 1'b0;
        else
            if(clken) 
                clken <= 1'b0;
            else if(clkdiv_match)
                clken <= 1'b1;

    assign clko = clken;

endmodule

module fifo_adc #(parameter DW=12, AW=5)(
    input     wire            clk,
    input     wire            rst_n,
    input     wire            rd,
    input     wire            wr,
    input     wire [DW-1:0]   w_data,
    output    wire            empty,
    output    wire            full,
    output    wire [DW-1:0]   r_data,
    output    wire [AW-1:0]   level    
);

    localparam  DEPTH = 2**AW;

    //Internal Signal declarations
    reg [DW-1:0]  array_reg [DEPTH-1:0];
    reg [AW-1:0]  w_ptr_reg;
    reg [AW-1:0]  w_ptr_next;
    reg [AW-1:0]  w_ptr_succ;
    reg [AW-1:0]  r_ptr_reg;
    reg [AW-1:0]  r_ptr_next;
    reg [AW-1:0]  r_ptr_succ;

  // Level
    reg [AW-1:0] level_reg;
    reg [AW-1:0] level_next;      
    reg full_reg;
    reg empty_reg;
    reg full_next;
    reg empty_next;
  
  wire w_en;
  

  always @ (posedge clk)
    if(w_en)
    begin
      array_reg[w_ptr_reg] <= w_data;
    end

  assign r_data = array_reg[r_ptr_reg];   

  assign w_en = wr & ~full_reg;           

//State Machine
  always @ (posedge clk, negedge rst_n)
  begin
    if(!rst_n)
      begin
        w_ptr_reg <= 0;
        r_ptr_reg <= 0;
        full_reg <= 1'b0;
        empty_reg <= 1'b1;
        level_reg <= 4'd0;
      end
    else
      begin
        w_ptr_reg <= w_ptr_next;
        r_ptr_reg <= r_ptr_next;
        full_reg <= full_next;
        empty_reg <= empty_next;
        level_reg <= level_next;
      end
  end


//Next State Logic
  always @*
  begin
    w_ptr_succ = w_ptr_reg + 1;
    r_ptr_succ = r_ptr_reg + 1;
    
    w_ptr_next = w_ptr_reg;
    r_ptr_next = r_ptr_reg;
    full_next = full_reg;
    empty_next = empty_reg;
    level_next = level_reg;
    
    case({w_en,rd})
      //2'b00: nop
      2'b01:
        if(~empty_reg)
          begin
            r_ptr_next = r_ptr_succ;
            full_next = 1'b0;
            level_next = level_reg - 1;
            if (r_ptr_succ == w_ptr_reg)
              empty_next = 1'b1;
          end
      2'b10:
        if(~full_reg)
          begin
            w_ptr_next = w_ptr_succ;
            empty_next = 1'b0;
            level_next = level_reg + 1;
            if (w_ptr_succ == r_ptr_reg)
              full_next = 1'b1;
          end
      2'b11:
        begin
          w_ptr_next = w_ptr_succ;
          r_ptr_next = r_ptr_succ;
        end
    endcase
  end

    //Set Full and Empty

  assign full = full_reg;
  assign empty = empty_reg;

  assign level = level_reg;
  
endmodule

module sar_ctrl #(parameter SIZE = 8) ( 
    input   wire                clk,        // The clock
    input   wire                rst_n,      // Active high reset
    input   wire                soc,        // Start of Conversion
    input   wire                cmp,        // Analog comparator output
    input   wire                en,
    input   wire [3:0]          swidth,     // Sample time width in clock cycles
    output  wire                sample_n,   // Sample_n/Hold
    output  wire [SIZE-1:0]     data,       // The output sample
    output  wire                eoc,        // End of Conversion
    output  wire                dac_rst     // for capacitive array DAC
);
	
	reg [SIZE-1:0]  result;
	reg [SIZE-1:0]  shift;
    reg [3:0]       sample_ctr;
    wire            sample_ctr_match = (swidth == sample_ctr);
	
    // FSM to handle the SAR operation
    reg [2:0]   state, nstate;
	localparam [2:0]    IDLE    = 3'd0, 
	                    SAMPLE  = 3'd1, 
	                    CONV    = 3'd2, 
	                    DONE    = 3'd3,
                        RST     = 3'd7;

	always @*
        case (state)
            IDLE    :   if(soc) nstate = RST;
                        else nstate = IDLE;
            RST     :   nstate = SAMPLE;
            SAMPLE  :   if(sample_ctr_match) nstate = CONV;
                        else nstate = SAMPLE;
            CONV    :   if(shift == 1'b1) nstate = DONE;
                        else nstate = CONV;
            DONE    :   nstate = IDLE;
            default:    nstate = IDLE;
        endcase
	  
	always @(posedge clk or negedge rst_n)
        if(!rst_n)
            state <= IDLE;
        else if(en)
            state <= nstate;

    // Sample Counter
    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            sample_ctr <= 'b0;
        else if(en & (state==SAMPLE))
            if(sample_ctr_match)
                sample_ctr <= 'b0;
            else
                sample_ctr <= sample_ctr + 'b1;
    
    // Shift Register
    always @(posedge clk)
        if(en)
            if(state == IDLE) 
                shift <= 1'b1 << (SIZE-1);
            else if(state == CONV)
                shift<= shift >> 1; 

    // The SAR
    wire [SIZE-1:0] current = (cmp == 1'b0) ? ~shift : {SIZE{1'b1}} ;
    wire [SIZE-1:0] next = shift >> 1;
    always @(posedge clk)
        if(en)
            if(state == IDLE)
                result <= 'b0;
            else if(state == RST) 
                result <= 1'b1 << (SIZE-1);
            else if(state == CONV)
                result <= (result | next) & current; 
	   
	assign data = result;
    
    assign eoc = (state==DONE);

    assign sample_n = (state != SAMPLE);


	assign dac_rst = (state == RST);

endmodule

/* Sequence is a 5-bit value: 
    - [2:0] : Channel Number
    - [3] : Skip
    - [4] : End
*/

module EF_ADCS1008A #(parameter CLKDIV_WIDTH = 8, FIFO_AW=5)(
    input  wire                     clk,
    input  wire                     rst_n,
    input  wire [3:0]               swidth,
    input  wire [CLKDIV_WIDTH-1:0]  clkdiv, 
    input  wire [CLKDIV_WIDTH-1:0]  sample_div, 
    input  wire                     en,
    input  wire                     cmp,
    input  wire                     soc, 
    output wire                     dac_rst,
    output wire                     sample_n,
    output wire                     eoc, 
    output wire [11:0]              data,
    output wire [11:0]              adc_data,
    input  wire                     rd,
    output wire [2:0]               ch_sel_out,
    input  wire [2:0]               ch_sel_in,
    input  wire [4:0]               seq0,
    input  wire [4:0]               seq1,
    input  wire [4:0]               seq2,
    input  wire [4:0]               seq3,
    input  wire [4:0]               seq4,
    input  wire [4:0]               seq5,
    input  wire [4:0]               seq6,
    input  wire [4:0]               seq7,
    input  wire                     seq_en,
    output wire                     fifo_full,
    input  wire [FIFO_AW-1:0]       fifo_threshold,
    output wire                     fifo_above,
    output wire                     EN
);
    wire                clken;
    wire                sample_en;
    wire                soc_edge;
    reg  [1:0]          last_soc;
    reg  [2:0]          seq_ctr;
    wire [4:0]          seq;
    reg                 seq_soc;

    wire                fifo_rd;
    wire                fifo_wr;
    wire [11:0]         fifo_wdata;
    wire                fifo_empty;
    //wire            fifo_full;
    wire [11:0]          fifo_rdata;
    wire [FIFO_AW-1:0]  fifo_level;  
    
    assign              EN = en;
    // Generate an SoC pulse in synch with clken
    wire start_of_conv = seq_en ? seq_soc : soc;
    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            last_soc <= 0;
        else if(clken)
            last_soc <= {last_soc[0], start_of_conv};
    assign soc_edge = ~last_soc[1] & start_of_conv;


    // Sequencer
    assign seq =    (seq_ctr==0) ? seq0 :
                    (seq_ctr==1) ? seq1 :
                    (seq_ctr==2) ? seq2 :
                    (seq_ctr==3) ? seq3 :
                    (seq_ctr==4) ? seq4 :
                    (seq_ctr==5) ? seq5 :
                    (seq_ctr==6) ? seq6 : seq7;
    wire [2:0] seq_ch = seq[2:0];
    wire seq_end = seq[4];
    wire seq_skip = seq[3];

    always @(posedge clk or negedge rst_n)
            if(!rst_n)
                seq_ctr <= 'b111;
            else
                if(sample_en)
                    if(seq_end)
                        seq_ctr <= 'b0;
                    else
                        seq_ctr <= seq_ctr + 'b1;
    
    assign ch_sel_out = seq_en ? seq_ch : ch_sel_in;

    always @(posedge clk or negedge rst_n)
        if(!rst_n) seq_soc = 'b0;
        else if(sample_en) seq_soc = 'b1;
        else if(clken) seq_soc = 'b0;
    
    // Clock Dividers
    clock_divider_adc CDIV (
        .clk(clk),
        .rst_n(rst_n),
        .en(en),
        .clkdiv(clkdiv),
        .clko(clken)
    );
    
    clock_divider_adc SDIV (
        .clk(clk),
        .rst_n(rst_n),
        .en(clken & seq_en),
        .clkdiv(sample_div),
        .clko(sample_en)
    );

    sar_ctrl #(.SIZE(12)) SAR ( 
        .clk(clk),        
        .rst_n(rst_n),      
        .soc(soc_edge),        
        .cmp(cmp),        
        .en(clken),         
        .swidth(swidth),     
        .sample_n(sample_n),       
        .data(fifo_wdata),       
        .eoc(eoc),
        .dac_rst(dac_rst)         
    );

    // FIFO
    reg fifo_wr_reg;
    always @(posedge clk or negedge rst_n)
        if(!rst_n) fifo_wr_reg <= 0;
        else fifo_wr_reg <= eoc;
    assign fifo_wr = eoc & ~fifo_wr_reg;
    assign fifo_rd = rd;
    assign data = fifo_rdata;

    assign fifo_above = (fifo_threshold < fifo_level);

    fifo_adc #(.AW(FIFO_AW)) ADCFIFO (
        .clk(clk),
        .rst_n(rst_n),
        .rd(fifo_rd),
        .wr(fifo_wr),
        .w_data(fifo_wdata),
        .empty(fifo_empty),
        .full(fifo_full),
        .r_data(fifo_rdata),
        .level (fifo_level)
    ); 

    assign adc_data = fifo_wdata;

endmodule

