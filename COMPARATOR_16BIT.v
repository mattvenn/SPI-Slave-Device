/* Generated by Yosys 0.29+11 (git sha1 acfdc5cc4, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module COMPARATOR_16BIT(clk, din, sel, comp_val, pwm_o);
  wire _0_;
  wire _1_;
  wire _2_;
  wire _3_;
  wire _4_;
  wire _5_;
  wire _6_;
  reg _7_;
  input clk;
  wire clk;
  input [15:0] comp_val;
  wire [15:0] comp_val;
  input [15:0] din;
  wire [15:0] din;
  output pwm_o;
  wire pwm_o;
  input sel;
  wire sel;
  assign _4_ = _3_ ? 1'h1 : 1'h0;
  assign _5_ = sel ? _4_ : _7_;
  assign _6_ = _0_ ? _2_ : _5_;
  always @(posedge clk)
    _7_ <= _6_;
  assign _0_ = ~ sel;
  assign _1_ = din >= comp_val;
  assign _2_ = _1_ ? 1'h0 : 1'h1;
  assign _3_ = din <= comp_val;
  assign pwm_o = _7_;
endmodule