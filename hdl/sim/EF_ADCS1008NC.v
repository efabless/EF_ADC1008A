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
module EF_ADCS1008NC (
    input real          VDD,
    input real          VSS,
    input real          DVDD,
    input real          DVSS,

    input real          VH,
    input real          VL,

    input real          in0,
    input real          in1,
    input real          in2,
    input real          in3,
    input real          in4,
    input real          in5,
    input real          in6,
    input real          in7,

    input wire          hold,
    
    input wire          b0,
    input wire          b1,
    input wire          b2,
    
    input  wire [9:0]   data,
        
    output wire         cmp

);


    wire real a_mux;
    assign a_mux =  ({b2,b1,b0} == 3'd0) ? in0 :
                    ({b2,b1,b0} == 3'd1) ? in1 :
                    ({b2,b1,b0} == 3'd2) ? in2 :
                    ({b2,b1,b0} == 3'd3) ? in3 :
                    ({b2,b1,b0} == 3'd4) ? in4 :
                    ({b2,b1,b0} == 3'd5) ? in5 :
                    ({b2,b1,b0} == 3'd6) ? in6 : in7;

    real held_value;
    always @(posedge hold)
        held_value = a_mux;

    wire real dac_out;
    assign dac_out = data * (VH-VL)/1024.0;

    assign cmp = (held_value > dac_out) ? 1 : 0;

endmodule