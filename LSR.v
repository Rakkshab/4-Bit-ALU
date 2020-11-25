module LSR(output [3:0] ALU_Out_LSR,input [3:0] A,input [3:0] ALU_Sel);
assign ALU_Out_LSR = A>>1; 
endmodule
