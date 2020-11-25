module Add(output [3:0] ALU_Out_Add,output CarryOut,input [3:0] A, input [3:0] B,input [3:0] ALU_Sel);
wire [4:0] tmp;
assign tmp = {1'b0,A} + {1'b0,B};
assign CarryOut = tmp[4]; 
assign ALU_Out_Add = A + B ;
endmodule
