// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Thu Sep 18 21:58:42 2025
// Host        : LAPTOP-8R7VUQUT running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/srish/project_5/project_5.sim/sim_1/impl/func/xsim/test_vedic_8_compare_func_impl.v
// Design      : approx_vedic_4_x_4
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1157-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "1587c2aa" *) 
(* NotValidForBitStream *)
module approx_vedic_4_x_4
   (a,
    b,
    c);
  input [3:0]a;
  input [3:0]b;
  output [7:0]c;

  wire [3:0]a;
  wire [3:0]a_IBUF;
  wire [3:0]b;
  wire [3:0]b_IBUF;
  wire [7:0]c;
  wire [7:0]c_OBUF;
  wire \c_OBUF[6]_inst_i_2_n_0 ;
  wire \c_OBUF[6]_inst_i_3_n_0 ;
  wire [3:3]q5;
  wire \z3/p_1_in ;

  IBUF \a_IBUF[0]_inst 
       (.I(a[0]),
        .O(a_IBUF[0]));
  IBUF \a_IBUF[1]_inst 
       (.I(a[1]),
        .O(a_IBUF[1]));
  IBUF \a_IBUF[2]_inst 
       (.I(a[2]),
        .O(a_IBUF[2]));
  IBUF \a_IBUF[3]_inst 
       (.I(a[3]),
        .O(a_IBUF[3]));
  IBUF \b_IBUF[0]_inst 
       (.I(b[0]),
        .O(b_IBUF[0]));
  IBUF \b_IBUF[1]_inst 
       (.I(b[1]),
        .O(b_IBUF[1]));
  IBUF \b_IBUF[2]_inst 
       (.I(b[2]),
        .O(b_IBUF[2]));
  IBUF \b_IBUF[3]_inst 
       (.I(b[3]),
        .O(b_IBUF[3]));
  OBUF \c_OBUF[0]_inst 
       (.I(c_OBUF[0]),
        .O(c[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c_OBUF[0]_inst_i_1 
       (.I0(b_IBUF[0]),
        .I1(a_IBUF[0]),
        .O(c_OBUF[0]));
  OBUF \c_OBUF[1]_inst 
       (.I(c_OBUF[1]),
        .O(c[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7888)) 
    \c_OBUF[1]_inst_i_1 
       (.I0(b_IBUF[0]),
        .I1(a_IBUF[1]),
        .I2(a_IBUF[0]),
        .I3(b_IBUF[1]),
        .O(c_OBUF[1]));
  OBUF \c_OBUF[2]_inst 
       (.I(1'b1),
        .O(c[2]));
  OBUF \c_OBUF[3]_inst 
       (.I(1'b1),
        .O(c[3]));
  OBUF \c_OBUF[4]_inst 
       (.I(c_OBUF[4]),
        .O(c[4]));
  LUT6 #(
    .INIT(64'hFFFFAEAAEEAAEEAA)) 
    \c_OBUF[4]_inst_i_1 
       (.I0(\z3/p_1_in ),
        .I1(a_IBUF[3]),
        .I2(b_IBUF[0]),
        .I3(b_IBUF[1]),
        .I4(b_IBUF[2]),
        .I5(a_IBUF[2]),
        .O(c_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h4C00)) 
    \c_OBUF[4]_inst_i_2 
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[3]),
        .I2(a_IBUF[0]),
        .I3(a_IBUF[1]),
        .O(\z3/p_1_in ));
  OBUF \c_OBUF[5]_inst 
       (.I(c_OBUF[5]),
        .O(c[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \c_OBUF[5]_inst_i_1 
       (.I0(a_IBUF[2]),
        .I1(a_IBUF[3]),
        .I2(b_IBUF[0]),
        .I3(b_IBUF[1]),
        .I4(q5),
        .O(c_OBUF[5]));
  LUT6 #(
    .INIT(64'h8F7F7080F000F000)) 
    \c_OBUF[5]_inst_i_2 
       (.I0(a_IBUF[0]),
        .I1(a_IBUF[1]),
        .I2(b_IBUF[3]),
        .I3(a_IBUF[2]),
        .I4(a_IBUF[3]),
        .I5(b_IBUF[2]),
        .O(q5));
  OBUF \c_OBUF[6]_inst 
       (.I(c_OBUF[6]),
        .O(c[6]));
  LUT6 #(
    .INIT(64'h8C70800030708000)) 
    \c_OBUF[6]_inst_i_1 
       (.I0(\c_OBUF[6]_inst_i_2_n_0 ),
        .I1(a_IBUF[2]),
        .I2(a_IBUF[3]),
        .I3(b_IBUF[2]),
        .I4(b_IBUF[3]),
        .I5(\c_OBUF[6]_inst_i_3_n_0 ),
        .O(c_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c_OBUF[6]_inst_i_2 
       (.I0(b_IBUF[0]),
        .I1(b_IBUF[1]),
        .O(\c_OBUF[6]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c_OBUF[6]_inst_i_3 
       (.I0(a_IBUF[0]),
        .I1(a_IBUF[1]),
        .O(\c_OBUF[6]_inst_i_3_n_0 ));
  OBUF \c_OBUF[7]_inst 
       (.I(c_OBUF[7]),
        .O(c[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \c_OBUF[7]_inst_i_1 
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[2]),
        .I2(a_IBUF[3]),
        .I3(a_IBUF[2]),
        .O(c_OBUF[7]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
