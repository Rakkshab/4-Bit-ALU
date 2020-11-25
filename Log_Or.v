module Log_Or(output [3:0] ALU_Out_Or,input [3:0] A, input [3:0] B,input [3:0] ALU_Sel);
assign ALU_Out_Or = A|B ;
endmodule
