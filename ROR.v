module ROR(output [3:0] ALU_Out_ROR, input [3:0] A,input [3:0] ALU_Sel);
assign ALU_Out_ROR = {A[0],A[3:1]};
endmodule
