////////////////////////////////////////
///8 bit Barrel Shifter Verilog Code
///////////////////////////////////////

module barrel_shifter_8bit (in, ctrl, out);
  input  [7:0] in;
  input [2:0] ctrl;
  output [7:0] out;
  wire [7:0] x,y;

//4bit shift right
mux2X1  ins_17 (.in0(in[7]),.in1(1'b0),.sel(ctrl[2]),.out(x[7]));
mux2X1  ins_16 (.in0(in[6]),.in1(1'b0),.sel(ctrl[2]),.out(x[6]));
mux2X1  ins_15 (.in0(in[5]),.in1(1'b0),.sel(ctrl[2]),.out(x[5]));
mux2X1  ins_14 (.in0(in[4]),.in1(1'b0),.sel(ctrl[2]),.out(x[4]));
mux2X1  ins_13 (.in0(in[3]),.in1(in[7]),.sel(ctrl[2]),.out(x[3]));
mux2X1  ins_12 (.in0(in[2]),.in1(in[6]),.sel(ctrl[2]),.out(x[2]));
mux2X1  ins_11 (.in0(in[1]),.in1(in[5]),.sel(ctrl[2]),.out(x[1]));
mux2X1  ins_10 (.in0(in[0]),.in1(in[4]),.sel(ctrl[2]),.out(x[0]));

//2 bit shift right

mux2X1  ins_27 (.in0(x[7]),.in1(1'b0),.sel(ctrl[1]),.out(y[7]));
mux2X1  ins_26 (.in0(x[6]),.in1(1'b0),.sel(ctrl[1]),.out(y[6]));
mux2X1  ins_25 (.in0(x[5]),.in1(x[7]),.sel(ctrl[1]),.out(y[5]));
mux2X1  ins_24 (.in0(x[4]),.in1(x[6]),.sel(ctrl[1]),.out(y[4]));
mux2X1  ins_23 (.in0(x[3]),.in1(x[5]),.sel(ctrl[1]),.out(y[3]));
mux2X1  ins_22 (.in0(x[2]),.in1(x[4]),.sel(ctrl[1]),.out(y[2]));
mux2X1  ins_21 (.in0(x[1]),.in1(x[3]),.sel(ctrl[1]),.out(y[1]));
mux2X1  ins_20 (.in0(x[0]),.in1(x[2]),.sel(ctrl[1]),.out(y[0]));

//1 bit shift right
mux2X1  ins_07 (.in0(y[7]),.in1(1'b0),.sel(ctrl[0]),.out(out[7]));
mux2X1  ins_06 (.in0(y[6]),.in1(y[7]),.sel(ctrl[0]),.out(out[6]));
mux2X1  ins_05 (.in0(y[5]),.in1(y[6]),.sel(ctrl[0]),.out(out[5]));
mux2X1  ins_04 (.in0(y[4]),.in1(y[5]),.sel(ctrl[0]),.out(out[4]));
mux2X1  ins_03 (.in0(y[3]),.in1(y[4]),.sel(ctrl[0]),.out(out[3]));
mux2X1  ins_02 (.in0(y[2]),.in1(y[3]),.sel(ctrl[0]),.out(out[2]));
mux2X1  ins_01 (.in0(y[1]),.in1(y[2]),.sel(ctrl[0]),.out(out[1]));
mux2X1  ins_00 (.in0(y[0]),.in1(y[1]),.sel(ctrl[0]),.out(out[0]));

endmodule

/////////////////////////
//2X1 Mux
/////////////////////////
 
module mux2X1( in0,in1,sel,out);
input in0,in1;
input sel;
output out;
assign out=(sel)?in1:in0;
endmodule

 

The test bench for 8 bit Barrel Shifter is given below.
Barrel Shifter Verilog Code Test Bench

module barrel_shifter_8bit_tb;
  reg [7:0] in;
  reg [2:0] ctrl;
  wire [7:0] out; 
  
barrel_shifter_8bit uut(.in(in), .ctrl(ctrl), .out(out));
  
initial 
 begin
    $display($time, " << Starting the Simulation >>");
        in= 8'd0;  ctrl=3'd0; //no shift
    #10 in=8'd128; ctrl= 3'd4; //shift 4 bit
    #10 in=8'd128; ctrl= 3'd2; //shift 2 bit
    #10 in=8'd128; ctrl= 3'd1; //shift by 1 bit
    #10 in=8'd255; ctrl= 3'd7; //shift by 7bit
  end
    initial begin
      $monitor("Input=%d, Control=%d, Output=%d",in,ctrl,out);
    end
endmodule
  
