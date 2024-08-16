module LegReg (clk, rst, Read_A, Read_B, Write, Write_Value, Output_A, Output_B, Output);
  parameter UUID = 0;
  parameter NAME = "";
  input wire clk;
  input wire rst;

  input  wire [0:0] Read_A;
  input  wire [0:0] Read_B;
  input  wire [0:0] Write;
  input  wire [7:0] Write_Value;
  output  wire [7:0] Output_A;
  output  wire [7:0] Output_B;
  output  wire [7:0] Output;

  TC_Register # (.UUID(64'd1236579485068603428 ^ UUID), .BIT_WIDTH(64'd8)) Register8_0 (.clk(clk), .rst(rst), .load(wire_4), .save(wire_5), .in(wire_3), .out(wire_2));
  TC_Switch # (.UUID(64'd3812915516421265757 ^ UUID), .BIT_WIDTH(64'd8)) Output8z_1 (.en(wire_1), .in(wire_2), .out(Output_A));
  TC_Switch # (.UUID(64'd2799681599551201979 ^ UUID), .BIT_WIDTH(64'd8)) Output8z_2 (.en(wire_0), .in(wire_2), .out(Output_B));
  TC_Constant # (.UUID(64'd2893975954531108153 ^ UUID), .BIT_WIDTH(64'd1), .value(1'd1)) On_3 (.out(wire_4));

  wire [0:0] wire_0;
  assign wire_0 = Read_B;
  wire [0:0] wire_1;
  assign wire_1 = Read_A;
  wire [7:0] wire_2;
  assign Output = wire_2;
  wire [7:0] wire_3;
  assign wire_3 = Write_Value;
  wire [0:0] wire_4;
  wire [0:0] wire_5;
  assign wire_5 = Write;

endmodule
