module LSL(output [3:0] ALU_Out_LSL,input [3:0] A,input [3:0] ALU_Sel);
assign ALU_Out_LSL = A<<1; 
endmodule
