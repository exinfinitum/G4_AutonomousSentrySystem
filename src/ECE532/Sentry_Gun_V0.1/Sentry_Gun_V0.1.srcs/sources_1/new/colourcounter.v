`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/21/2017 06:42:39 PM
// Design Name: 
// Module Name: colourcounter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

    // Each colour counter reads 16*16=256 pixels, and then has 3 outputs:
    // the Red, Green and Blue scores.
    // Each colour counter will have a pixel input port, and an enable value.
    // On the posedge of enable, the contents of the pixel input will be added to the three outs.
    // If enable is turned on while reset is also on, then the colour counter results are zeroed.
    // WARNING, reset is ACTIVE LOW here.

module colourcounter(
    input [15:0] pixel_in,
    input enable,
    input clock,
    input reset,
    output reg [15:0] outr,
    output reg [15:0] outg,
    output reg [15:0] outb
    );
    wire [4:0] r;
    wire [4:0] g;
    wire [4:0] b;
    
    reg [7:0] pixelcount;
    
    assign r= pixel_in[11:8];
    assign g= pixel_in[7:4];
    assign b= pixel_in[3:0];

    reg [15:0] rcount;
    reg [15:0] gcount;
    reg [15:0] bcount;
    
    
    always@(posedge clock) begin // asynchronous reset
        if (~reset) begin
        if (enable) begin
        pixelcount = pixelcount + 1;
        rcount = rcount + r;
        gcount = gcount + g;
        bcount = bcount + b;
        //outg <= outg + g;
        //outb <= outb + b;
        if (pixelcount == 8'b11111111) begin
            outr[15:0] = rcount[15:0];
            outg[15:0] = gcount[15:0];
            outb[15:0] = bcount[15:0];
            rcount = 16'b0;
            gcount = 16'b0;
            bcount = 16'b0;
            pixelcount = 8'b0;
        end
        end
        end else begin
        pixelcount = 8'b0;
        rcount <= 16'b0;
        gcount <= 16'b0;
        bcount <= 16'b0;
        end
    end
    
endmodule
