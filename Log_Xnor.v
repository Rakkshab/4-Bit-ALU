module Log_Xnor(output [3:0] ALU_Out_Xnor,input [3:0] A, input [3:0] B,input [3:0] ALU_Sel);
assign ALU_Out_Xnor = ~(A ^ B);
endmodule
