module STACK (clk, rst, POP, PUSH, VALUE, OUTPUT);
  parameter UUID = 0;
  parameter NAME = "";
  input wire clk;
  input wire rst;

  input  wire [0:0] POP;
  input  wire [0:0] PUSH;
  input  wire [7:0] VALUE;
  output  wire [7:0] OUTPUT;

  TC_Switch # (.UUID(64'd3612250171356900372 ^ UUID), .BIT_WIDTH(64'd8)) Output8z_0 (.en(wire_5), .in(wire_3[7:0]), .out(OUTPUT));
  TC_Ram # (.UUID(64'd2467131689552754774 ^ UUID), .WORD_WIDTH(64'd8), .WORD_COUNT(64'd256)) Ram_1 (.clk(clk), .rst(rst), .load(wire_5), .save(wire_4), .address({{24{1'b0}}, wire_2 }), .in0({{56{1'b0}}, wire_7 }), .in1(64'd0), .in2(64'd0), .in3(64'd0), .out0(wire_3), .out1(), .out2(), .out3());
  TC_Register # (.UUID(64'd3825042487918607728 ^ UUID), .BIT_WIDTH(64'd8)) Register8_2 (.clk(clk), .rst(rst), .load(wire_6), .save(wire_6), .in(wire_8), .out(wire_1));
  TC_Add # (.UUID(64'd3007645541090053097 ^ UUID), .BIT_WIDTH(64'd8)) Add8_3 (.in0(wire_1), .in1(wire_10), .ci(1'd0), .out(wire_8), .co());
  TC_Constant # (.UUID(64'd2988431286535896275 ^ UUID), .BIT_WIDTH(64'd8), .value(8'h1)) Constant8_4 (.out(wire_9));
  TC_Constant # (.UUID(64'd935375791042711975 ^ UUID), .BIT_WIDTH(64'd8), .value(8'hFF)) Constant8_5 (.out(wire_0));
  TC_Switch # (.UUID(64'd629698849085705707 ^ UUID), .BIT_WIDTH(64'd8)) Switch8_6 (.en(wire_4), .in(wire_9), .out(wire_10_0));
  TC_Switch # (.UUID(64'd4533537820636632046 ^ UUID), .BIT_WIDTH(64'd8)) Switch8_7 (.en(wire_5), .in(wire_0), .out(wire_10_1));
  TC_Constant # (.UUID(64'd478950856423311095 ^ UUID), .BIT_WIDTH(64'd1), .value(1'd1)) On_8 (.out(wire_6));
  TC_Mux # (.UUID(64'd2883904821711008630 ^ UUID), .BIT_WIDTH(64'd8)) Mux8_9 (.sel(wire_5), .in0(wire_1), .in1(wire_8), .out(wire_2));
  TC_Constant # (.UUID(64'd36267609165406887 ^ UUID), .BIT_WIDTH(64'd1), .value(1'd1)) On_10 (.out());
  TC_Constant # (.UUID(64'd210270477838978575 ^ UUID), .BIT_WIDTH(64'd1), .value(1'd1)) On_11 (.out());

  wire [7:0] wire_0;
  wire [7:0] wire_1;
  wire [7:0] wire_2;
  wire [63:0] wire_3;
  wire [0:0] wire_4;
  assign wire_4 = PUSH;
  wire [0:0] wire_5;
  assign wire_5 = POP;
  wire [0:0] wire_6;
  wire [7:0] wire_7;
  assign wire_7 = VALUE;
  wire [7:0] wire_8;
  wire [7:0] wire_9;
  wire [7:0] wire_10;
  wire [7:0] wire_10_0;
  wire [7:0] wire_10_1;
  assign wire_10 = wire_10_0|wire_10_1;

endmodule
