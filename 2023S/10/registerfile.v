module RegisterFile(BusA, BusB, BusW, RA, RB, RW, RegWr, Clk);
  output [63:0] BusA, BusB;
  input [63:0] BusW;
  input [4:0] RA, RB, RW;
  input RegWr;
  input Clk;

  reg [63:0] registers [31:0];

  assign #2 BusA = registers[RA];
  assign #2 BusB = registers[RB];

  always @ (negedge Clk) 
  begin
    if(RegWr)
      if (RW != 4'd31)
        registers[RW] <= #3 BusW;
      else 
        // This is done to allow the user to reset the 0th location to a zero value.
        registers[0] <= #3 'd0; 
  end
endmodule