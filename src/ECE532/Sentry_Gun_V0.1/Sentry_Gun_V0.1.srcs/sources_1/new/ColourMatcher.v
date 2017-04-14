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

module ColourMatcher(
    input [15:0] pixel_in,
    input enable,
    input clock,
    input [15:0] pixel_set,
    input reset,
    output reg [15:0] outr,
    output reg [15:0] outg,
    output reg [15:0] outb
    
    );
    wire [4:0] r;
    wire [4:0] g;
    wire [4:0] b;
    wire [4:0] rin;
    wire [4:0] gin;
    wire [4:0] bin;
    reg [6:0] realcount;
    
    reg [7:0] pixelcount;
    assign r= pixel_in[11:8];
    assign g= pixel_in[7:4];
    assign b= pixel_in[3:0];

    assign rin= pixel_set[11:8];
    assign gin= pixel_set[7:4];
    assign bin= pixel_set[3:0];

    reg [15:0] rcount;
    reg [15:0] gcount;
    reg [15:0] bcount;
    
    
    always@(posedge clock) begin // asynchronous reset
        if (~reset) begin
        if (enable) begin
        pixelcount = pixelcount + 1;
        
        // For each of the colours, get the delta between our inputted colour, and the actual colour.
        // Add the three numbers together to produce a score, then subtract it from 16'b1111111111111111.
        // To get the delta, use conditional assignment to find the greater and subtract the lesser from it.
        rcount = (r > rin) ? (r - rin) : (rin - r);
        gcount = (g > gin) ? (g - gin) : (gin - g);
        bcount = (b > bin) ? (b - bin) : (bin - b);
        realcount = 12'b111111111111 - (rcount + bcount + gcount);
        //outg <= outg + g;
        //outb <= outb + b;
        if (pixelcount == 8'b11111111) begin
            outr[11:6] = realcount[6:0];
            outg[11:6] = realcount[6:0];
            outb[11:6] = realcount[6:0];
            rcount = 16'b0;
            gcount = 16'b0;
            bcount = 16'b0;
            pixelcount = 8'b0;
        end
        end
        end else begin
        rcount <= 16'b0;
        gcount <= 16'b0;
        bcount <= 16'b0;
        end
    end
    
endmodule
