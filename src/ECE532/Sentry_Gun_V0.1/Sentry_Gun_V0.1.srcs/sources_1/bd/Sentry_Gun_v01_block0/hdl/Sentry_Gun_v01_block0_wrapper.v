//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
//Date        : Thu Feb 16 22:45:53 2017
//Host        : TNT running 64-bit major release  (build 9200)
//Command     : generate_target Sentry_Gun_v01_block0_wrapper.bd
//Design      : Sentry_Gun_v01_block0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Sentry_Gun_v01_block0_wrapper
   (
   CLK100MHZ,
   OV7670_VSYNC,
   OV7670_HREF,
   OV7670_PCLK,
   OV7670_XCLK,
   OV7670_SIOC,
   OV7670_SIOD,
   OV7670_D,
   
   LED,
   vga444_red,
   vga444_green,
   vga444_blue,
   vga_hsync,
   vga_vsync,
   BTNC,
   pwdn,
   reset,
   
   SW
   );
   
    input  CLK100MHZ;
    input  OV7670_VSYNC;
    input  OV7670_HREF;
    input  OV7670_PCLK;
    output OV7670_XCLK;
    output OV7670_SIOC;
    inout  OV7670_SIOD;
    input [7:0] OV7670_D;
    
    output[3:0] LED;
    output[3:0] vga444_red;
    output[3:0] vga444_green;
    output[3:0] vga444_blue;
    output vga_hsync;
    output vga_vsync;
    input BTNC;
    output pwdn;
    output reset;
    
    input SW;
   
    wire  CLK100MHZ;
    wire  OV7670_VSYNC;
    wire  OV7670_HREF;
    wire  OV7670_PCLK;
    wire OV7670_XCLK;
    wire OV7670_SIOC;
    wire  OV7670_SIOD;
    wire [7:0] OV7670_D;    
    wire[3:0] LED;
    wire[3:0] vga444_red;
    wire[3:0] vga444_green;
    wire[3:0] vga444_blue;
    wire vga_hsync;
    wire vga_vsync;
    wire BTNC;
    wire pwdn;
    wire reset;
    
    wire [15:0] to_cs;
    wire [15:0] from_cs;
    wire pixel_on;
    
    colourshifter colourshifter_i(
    .pixel_clock(OV7670_XCLK),
    .pixel_in(to_cs),
    .pixel_out(from_cs),
    .pixel_on(pixel_on)
    );
   
   ov7670_top ov7670_top_i(
   .CLK100MHZ(CLK100MHZ),
   .OV7670_VSYNC(OV7670_VSYNC),
   .OV7670_HREF(OV7670_HREF),
   .OV7670_PCLK(OV7670_PCLK),
   .OV7670_XCLK(OV7670_XCLK),
   .OV7670_SIOC(OV7670_SIOC),
   .OV7670_SIOD(OV7670_SIOD),
   .OV7670_D(OV7670_D),
   
   .use_external(SW),
   .pixel(to_cs),
   .pixel_modified(from_cs),
   .display_pixel(pixel_on),
   
   .LED(LED),
   .vga444_red(vga444_red),
   .vga444_green(vga444_green),
   .vga444_blue(vga444_blue),
   .vga_hsync(vga_hsync),
   .vga_vsync(vga_vsync),
   .BTNC(BTNC),
   .pwdn(pwdn),
   .reset(reset)
   );
endmodule
