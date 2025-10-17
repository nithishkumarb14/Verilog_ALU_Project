`timescale 1ns / 1ps
module alu
#(parameter BUS=8)
(
input [BUS-1:0] a,b,
input carry_in,
input [3:0] op_code,
output reg[BUS-1:0] y,
output reg carry_out,borrow,
output zero,parity,
output reg invalid_opcode
 );
 
localparam OP_ADD=1;//A+B
localparam OP_ADD_CARRY=2; //A+B+C
localparam OP_SUB=3;
localparam OP_INC=4; //A++
localparam OP_DEC=5; //A--
localparam OP_AND=6;
localparam OP_NOT=7;
localparam OP_ROL=8;
localparam OP_ROR=9;

always @(*) begin
y=0;carry_out=0; borrow=0 ; invalid_opcode=0;

case(op_code) 
OP_ADD : y=a+b;
OP_ADD_CARRY: {carry_out,y}=a+b+carry_in;
OP_SUB : y=a-b;
OP_INC :  {carry_out,y}=a+1'b1;
OP_DEC : {borrow,y} = a-1'b1;
OP_AND : y = a&b;
OP_NOT : y=~a;
OP_ROL : y={a[BUS-2:0],a[BUS-1]};
OP_ROR : y={a[0],a[BUS-1:1]};
default : invalid_opcode=1;
endcase
end 
assign parity=^y;
assign zero=(y==0);
endmodule
