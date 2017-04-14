`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/19/2017 01:13:36 AM
// Design Name: 
// Module Name: colourshifter
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


module colourshifter(
input pixel_clock,
input pixel_on,
input [15:0] pixel_in,
output reg [15:0] pixel_out
    );
    wire [4:0] r;
    wire [4:0] g;
    wire [4:0] b;
    assign r= pixel_in[11:8];
    assign g= pixel_in[7:4];
    assign b= pixel_in[3:0];
    
    reg [16:0] counter;
    reg [15:0] xcounter;
    reg [15:0] ycounter;
    
    reg [15:0] top_square;
    reg [15:0] left_square;
    
    always@(posedge pixel_clock) begin
    if (pixel_on) begin
        if (xcounter < (left_square + 64) && ycounter < (top_square + 64) && xcounter >= left_square && ycounter >= top_square) begin
        pixel_out[3:0] <= 4'b0000;
        pixel_out[7:4] <= 4'b0000;
        pixel_out[11:8] <= 4'b1111;    
        end else if (xcounter < 128) begin
        pixel_out[7:4] <= 4'b1111;
        pixel_out[3:0] <= 4'b0000;
        pixel_out[11:8] <= 4'b0000;    
        end else begin
        pixel_out[3:0] <= 4'b1111;
        pixel_out[7:4] <= 4'b0000;
        pixel_out[11:8] <= 4'b0000;    
        end    
        
        //Increment counter.
        if (counter >= 76799) begin
        counter <= 17'b0;
        left_square <= left_square + 1;
        end
        else
        counter <= counter + 1;
        
        
        if (left_square >=  257) begin
        left_square <= 15'b0;
        top_square = top_square + 1;
        end
        
        if (top_square >=  177) begin
        top_square <= 15'b0;
        
        end
        
        if (xcounter >= 319) begin 
        xcounter <= 16'b0;
        ycounter <= ycounter + 1;
        end
        else
        xcounter <= xcounter + 1;
        
        if (ycounter >= 240) 
        ycounter <= 16'b0;
        
        
    end
    end
    

    
    //assign pixel_out[3:0] = r;
    //assign pixel_out[7:4] = b;
    //assign pixel_out[11:8] = g;
endmodule
