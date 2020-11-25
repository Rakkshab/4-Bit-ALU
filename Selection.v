module Selection(
output [3:0] ALU_Out,
input [3:0] ALU_Sel,
input [3:0] ALU_Out_Add,
input [3:0] ALU_Out_Sub,
input [3:0] ALU_Out_Mul,
input [3:0] ALU_Out_Div,
input [3:0] ALU_Out_LSL,
input [3:0] ALU_Out_LSR,
input [3:0] ALU_Out_ROL,
input [3:0] ALU_Out_ROR,
input [3:0] ALU_Out_And,
input [3:0] ALU_Out_Or,
input [3:0] ALU_Out_Xor,
input [3:0] ALU_Out_Nor,
input [3:0] ALU_Out_Nand,
input [3:0] ALU_Out_Xnor,
input [3:0] ALU_Out_GT,
input [3:0] ALU_Out_EQ);

assign ALU_Out = ALU_Result;
reg [3:0] ALU_Result;
always @(*)
begin
case(ALU_Sel)
4'b0000: // Addition
ALU_Result = ALU_Out_Add ;
4'b0001: // Subtraction
ALU_Result = ALU_Out_Sub ;
4'b0010: // Multiplication
ALU_Result = ALU_Out_Mul;
4'b0011: // Division
ALU_Result = ALU_Out_Div;
4'b0100: // Logical shift left
ALU_Result = ALU_Out_LSL;
4'b0101: // Logical shift right
ALU_Result = ALU_Out_LSR;
4'b0110: // Rotate left
ALU_Result = ALU_Out_ROL;
4'b0111: // Rotate right
ALU_Result = ALU_Out_ROR;
4'b1000: // Logical and
ALU_Result = ALU_Out_And;
4'b1001: // Logical or
ALU_Result = ALU_Out_Or;
4'b1010: // Logical xor
ALU_Result = ALU_Out_Xor;
4'b1011: // Logical nor
ALU_Result = ALU_Out_Nor;
4'b1100: // Logical nand
ALU_Result = ALU_Out_Nand;
4'b1101: // Logical xnor
ALU_Result = ALU_Out_Xnor;
4'b1110: // Greater comparison
ALU_Result = ALU_Out_GT ;
4'b1111: // Equal comparison
ALU_Result = ALU_Out_EQ ;
default: ALU_Result = ALU_Out_Add;
endcase
end
endmodule

