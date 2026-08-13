`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    22:56:53 08/12/26
// Design Name:    
// Module Name:    ALU056
// Project Name:   
// Target Device:  
// Tool versions:  
// Description:
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
module ALU(a,b,s,y);
input [3:0] a;
input [3:0] b;
input [2:0] s;
output reg [3:0] y;
always @(*)
begin
case({s})
3'b000:y=a+b;
3'b001:y=a-b;
3'b010:y=a&b;
3'b011:y=a|b;
3'b100:y=a^b;
3'b101:y=~(a&b);
3'b110:y=a+1;
3'b111:y=a-1;
endcase
end
endmodule
