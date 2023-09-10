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
`timescale			1ns/1ns
`default_nettype	none

module EF_ADCS1008NC (
    input real          VDD,
    input real          VSS,
    input real          DVDD,
    input real          DVSS,

    input real          VH,
    input real          VL,

    input [7:0]         VIN ,
    
    input wire          HOLD,
    input wire          RST,
    input wire          EN,
    
    input wire [2:0]    B,
    
    input wire [9:0]    DATA,
        
    output wire         CMP

);

    real inp0 = 0.0;
    real inp1 = 0.0;
    real inp2 = 0.0;
    real inp3 = 0.0;
    real inp4 = 0.0;
    real inp5 = 0.0;
    real inp6 = 0.0;
    real inp7 = 0.0;
    
    wire real a_mux =   (B==0) ? inp0 :
                        (B==1) ? inp1 :
                        (B==2) ? inp2 :
                        (B==3) ? inp3 :
                        (B==4) ? inp4 :
                        (B==5) ? inp5 :
                        (B==6) ? inp6 : inp7;

    real held_value;
    always @(posedge HOLD)
        held_value = a_mux;

    wire real dac_out;

    //always @(negedge RST)
    assign dac_out = DATA * (VH-VL)/1024.0;

    assign CMP = (held_value > dac_out) ? 1 : 0;

endmodule