
`timescale 1ns / 1ns
module tve  ; 
 
  wire    CarryOut   ; 
  wire  [7:0]  ALU_Out   ; 
  reg  [3:0]  ALU_Sel   ; 
  reg  [7:0]  A   ; 
  reg  [7:0]  B   ; 
  TV1  
   DUT  ( 
       .CarryOut (CarryOut ) ,
      .ALU_Out (ALU_Out ) ,
      .ALU_Sel (ALU_Sel ) ,
      .A (A ) ,
      .B (B ) ); 



// "Constant Pattern"
// Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  initial
  begin
	  A  = 8'b00000000  ;
	 # 1000 ;
// dumped values till 1 us
  end


// "Constant Pattern"
// Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  initial
  begin
	  B  = 8'b00000000  ;
	 # 1000 ;
// dumped values till 1 us
  end


// "Constant Pattern"
// Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  initial
  begin
	  ALU_Sel  = 4'b0000  ;
	 # 1000 ;
// dumped values till 1 us
  end


// "Constant Pattern"
// Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  initial
  begin
	  if (ALU_Out  != (8'b00000000  )) $display($time, " test case failed");
	 # 1000 ;
// dumped values till 1 us
  end


// "Clock Pattern" : dutyCycle = 50
// Start Time = 0 ns, End Time = 1 us, Period = 100 ns
  initial
  begin
	  if (CarryOut  != (1'b0  )) $display($time, " test case failed");
	 # 50 ;
// 50 ns, single loop till start period.
   repeat(9)
   begin
	   if (CarryOut  != (1'b1  )) $display($time, " test case failed");
	  #50  if (CarryOut  != (1'b0  )) $display($time, " test case failed");
	  #50 ;
// 950 ns, repeat pattern in loop.
   end
	  if (CarryOut  != (1'b1  )) $display($time, " test case failed");
	 # 50 ;
// dumped values till 1 us
  end

  initial
	#2000 $stop;
endmodule
