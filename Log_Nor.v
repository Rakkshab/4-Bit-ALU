module Log_Nor(output [3:0] ALU_Out_Nor,input [3:0] A, input [3:0] B,input [3:0] ALU_Sel);
assign ALU_Out_Nor = ~(A|B);
endmodule
