//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
//Date        : Fri Mar 31 12:49:56 2017
//Host        : Homura running 64-bit major release  (build 9200)
//Command     : generate_target testie_wrapper.bd
//Design      : testie_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module testie_wrapper
   (BTNC,
    BTND,
    BTNL,
    BTNR,
    BTNU,
    LED,
    OV7670_D,
    OV7670_HREF,
    OV7670_PCLK,
    OV7670_SIOC,
    OV7670_SIOD,
    OV7670_VSYNC,
    OV7670_XCLK,
    SW,
    motor1,
    motor2,
    pwdn,
    reset,
    reset_0,
    sys_clock,
    vga444_blue,
    vga444_green,
    vga444_red,
    vga_hsync,
    vga_vsync);
  input BTNC;
  input BTND;
  input BTNL;
  input BTNR;
  input BTNU;
  output [15:0]LED;
  input [7:0]OV7670_D;
  input OV7670_HREF;
  input OV7670_PCLK;
  output OV7670_SIOC;
  inout OV7670_SIOD;
  input OV7670_VSYNC;
  output OV7670_XCLK;
  input [15:0]SW;
  output motor1;
  output motor2;
  output pwdn;
  output reset;
  input reset_0;
  input sys_clock;
  output [3:0]vga444_blue;
  output [3:0]vga444_green;
  output [3:0]vga444_red;
  output vga_hsync;
  output vga_vsync;

  wire BTNC;
  wire BTND;
  wire BTNL;
  wire BTNR;
  wire BTNU;
  wire [15:0]LED;
  wire [7:0]OV7670_D;
  wire OV7670_HREF;
  wire OV7670_PCLK;
  wire OV7670_SIOC;
  wire OV7670_SIOD;
  wire OV7670_VSYNC;
  wire OV7670_XCLK;
  wire [15:0]SW;
  wire motor1;
  wire motor2;
  wire pwdn;
  wire reset;
  wire reset_0;
  wire sys_clock;
  wire [3:0]vga444_blue;
  wire [3:0]vga444_green;
  wire [3:0]vga444_red;
  wire vga_hsync;
  wire vga_vsync;

  testie testie_i
       (.BTNC(BTNC),
        .BTND(BTND),
        .BTNL(BTNL),
        .BTNR(BTNR),
        .BTNU(BTNU),
        .LED(LED),
        .OV7670_D(OV7670_D),
        .OV7670_HREF(OV7670_HREF),
        .OV7670_PCLK(OV7670_PCLK),
        .OV7670_SIOC(OV7670_SIOC),
        .OV7670_SIOD(OV7670_SIOD),
        .OV7670_VSYNC(OV7670_VSYNC),
        .OV7670_XCLK(OV7670_XCLK),
        .SW(SW),
        .motor1(motor1),
        .motor2(motor2),
        .pwdn(pwdn),
        .reset(reset),
        .reset_0(reset_0),
        .sys_clock(sys_clock),
        .vga444_blue(vga444_blue),
        .vga444_green(vga444_green),
        .vga444_red(vga444_red),
        .vga_hsync(vga_hsync),
        .vga_vsync(vga_vsync));
endmodule
