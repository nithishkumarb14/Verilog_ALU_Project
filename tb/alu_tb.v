`timescale 1ns / 1ps
module alu_tb(
);
parameter BUS=8;
reg [BUS-1:0] a,b;
reg carry_in;
reg [3:0] op_code;
wire [BUS-1:0] y;
wire carry_out,borrow,zero,parity,invalid_op;

alu #(.BUS(BUS)) a1 (a,b,carry_in,op_code,y,carry_out,borrow,zero,parity,invalid_op);

initial begin
$monitor("a=%d b=%d carry_in=%d opcode=%d result=%d carry_out=%b borrow=%b zero=%b parity=%d invalid_op=%d \n",a,b,carry_in,op_code,y,carry_out,borrow,zero,parity,invalid_op);

$display("\\Addition// \n");#2;
op_code=1; a=55; b=67;
#2;op_code=2; a=68; b=98; carry_in=1;
#2;op_code=2; a=99; b=0 ; carry_in=0;

$display("Subtraction \n");
#2;op_code=3 ; a=10 ; b=10;
#2;op_code=3 ; a=100 ; b=10;
#2;op_code=3 ; a=100 ; b=1000;

$display("INC \n");
#2;op_code=4; a=10;

$display("DEC \n");
#2;op_code=5; a=1;

$display("AND \n");
#2;op_code=6; a=10 ; b=10;

$display("NOT \n");
#2;op_code=7; a=0;

$display("ROL \n");
#2;op_code=8; a=10;

$display("ROR \n");
#2;op_code=9; a=10;


#10; op_code=10;
end


endmodule
