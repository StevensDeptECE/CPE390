module registerfile_tb();
  reg clk;
  reg [63:0]W;
  reg [4:0] RA, RB, RW;
  reg wrn;
  
  wire [63:0] A, B;
  
  RegisterFile u_dut
  (
    .BusA(A), 
    .BusB(B),
    .BusW(W),
    .RA(RA),
    .RB(RB),
    .RW(RW),
    .RegWr(wrn),
    .Clk(clk)
  );
  
  always #5 clk = ~clk;
  
  initial 
    begin
    	$dumpfile("dump.vcd"); 
  		$dumpvars;
    end
  
  initial
    begin
      clk = 1;
      wrn = 0;
      RA  = 5'd0;
      RB  = 5'd0;
      RW  = 5'd0;
      W   = 64'd0;
      
      #40 W   = 64'd3456;
      #1  RW  = 5'd2;
      #1  wrn = 1;
      #15 wrn = 0;
          W   = 64'd0;
          RW  = 5'd0;
      
      #40 W   = 64'd6453;
      #1  RW  = 5'd19;
      #1  wrn = 1;
      #15 wrn = 0;
          W   = 64'd0;
          RW  = 5'd0;
      
      #40 W   = 64'd6453;
      #1  RW  = 5'd31;
      #1  wrn = 1;
      #15 wrn = 0;
          W   = 64'd0;
          RW  = 5'd0;
 
      #40 RA  = 5'd31;
          RB  = 5'd19;
      #10 RA  = 5'd19;
          RB  = 5'd2;
      #15
    $finish;
    end
  
endmodule
  
