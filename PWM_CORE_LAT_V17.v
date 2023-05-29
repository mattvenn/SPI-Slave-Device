/* Generated by Yosys 0.29+11 (git sha1 acfdc5cc4, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module PWM_CORE_LAT_V17(clk, rst, en, pwm_reg_a, pwm_reg_b, pwm_out_1, pwm_out_2);
  wire [15:0] _0_;
  wire [15:0] _1_;
  wire _2_;
  wire [15:0] _3_;
  wire [15:0] _4_;
  wire _5_;
  wire _6_;
  input clk;
  wire clk;
  wire counter_overflow;
  input en;
  wire en;
  wire [15:0] n_counter_val;
  wire [15:0] p_counter_val;
  output pwm_out_1;
  wire pwm_out_1;
  output pwm_out_2;
  wire pwm_out_2;
  input [15:0] pwm_reg_a;
  wire [15:0] pwm_reg_a;
  input [15:0] pwm_reg_b;
  wire [15:0] pwm_reg_b;
  wire [15:0] reg_a_out;
  wire [15:0] reg_b_out;
  input rst;
  wire rst;
  COUNTER_16BIT counter (
    .clk(clk),
    .dout(_3_),
    .en(en),
    .ndout(_4_),
    .overflow(_2_),
    .rst(rst)
  );
  COMPARATOR_16BIT n_comparator (
    .clk(clk),
    .comp_val(reg_b_out),
    .din(n_counter_val),
    .pwm_o(_6_),
    .sel(1'h1)
  );
  COMPARATOR_16BIT p_comparator (
    .clk(clk),
    .comp_val(reg_a_out),
    .din(p_counter_val),
    .pwm_o(_5_),
    .sel(1'h0)
  );
  REGISTER_16BIT reg_a (
    .clk(clk),
    .din(pwm_reg_a),
    .dout(_0_),
    .en(counter_overflow),
    .rst(rst)
  );
  REGISTER_16BIT reg_b (
    .clk(clk),
    .din(pwm_reg_b),
    .dout(_1_),
    .en(counter_overflow),
    .rst(rst)
  );
  assign n_counter_val = _4_;
  assign p_counter_val = _3_;
  assign reg_a_out = _0_;
  assign reg_b_out = _1_;
  assign counter_overflow = _2_;
  assign pwm_out_1 = _5_;
  assign pwm_out_2 = _6_;
endmodule