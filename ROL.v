module ROL(output [3:0] ALU_Out_ROL,input [3:0] A,input [3:0] ALU_Sel);
assign ALU_Out_ROL = {A[2:0],A[3]};
endmodule
