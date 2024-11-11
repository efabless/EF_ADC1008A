
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
            CONV    :   if(shift == 'b1) nstate = DONE;
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

