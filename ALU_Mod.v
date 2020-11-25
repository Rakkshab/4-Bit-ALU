module ALU_Mod(
output [3:0] ALU_Out, // ALU 4-bit Output
output CarryOut, 	// Carry Out Flag
input [3:0] A,B, // ALU 4-bit Inputs
input [3:0] ALU_Sel // ALU Selection
);

reg [3:0] ALU_Result;

Add M1(ALU_Out_Add,CarryOut,A,B,ALU_Sel);
Sub M2(ALU_Out_Sub,A,B,ALU_Sel);
Mul M3(ALU_Out_Mul,A,B,ALU_Sel);
Div M4(ALU_Out_Div,A,B,ALU_Sel);
LSL M5(ALU_Out_LSL,A,ALU_Sel);
LSR M6(ALU_Out_LSR,A,ALU_Sel);
ROL M7(ALU_Out_ROL,A,ALU_Sel);
ROR M8(ALU_Out_ROR,A,ALU_Sel);
Log_And M9(ALU_Out_And,A,B,ALU_Sel);
Log_Or M10(ALU_Out_Or,A,B,ALU_Sel);
Log_Xor M11(ALU_Out_Xor,A,B,ALU_Sel);
Log_Nor M12(ALU_Out_Nor,A,B,ALU_Sel);
Log_Nand M13(ALU_Out_Nand,A,B,ALU_Sel);
Log_Xnor M14(ALU_Out_Xnor,A,B,ALU_Sel);
GT M15(ALU_Out_GT,A,B,ALU_Sel);
EQ M16(ALU_Out_EQ,A,B,ALU_Sel);

Selection S1(
ALU_Out,
ALU_Sel, 
ALU_Out_Add,
ALU_Out_Sub,
ALU_Out_Mul,
ALU_Out_Div,
ALU_Out_LSL,
ALU_Out_LSR,
ALU_Out_ROL,
ALU_Out_ROR,
ALU_Out_And,
ALU_Out_Or,
ALU_Out_Xor,
ALU_Out_Nor,
ALU_Out_Nand,
ALU_Out_Xnor,
ALU_Out_GT,
ALU_Out_EQ);

endmodule
