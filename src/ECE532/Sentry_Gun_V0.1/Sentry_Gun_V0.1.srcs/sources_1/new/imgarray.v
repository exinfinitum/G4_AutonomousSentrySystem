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


module imgarray(
input pixel_clock,
input pixel_on,

input SW, // PLEASE REMOVE ME!

input [15:0] pixel_in,
input [15:0] pixel_set,
output reg [15:0] pixel_out
//output wire [15:0] scores_out[299:0]
    );
    wire [4:0] r;
    wire [4:0] g;
    wire [4:0] b;
    assign r= pixel_in[11:8];
    assign g= pixel_in[7:4];
    assign b= pixel_in[3:0];
    wire [15:0] pixelset;
    assign pixelset = pixel_set;
    reg [16:0] counter;
    reg [15:0] xcounter;
    reg [15:0] ycounter;
    
   // reg [15:0] top_square;
   // reg [15:0] left_square;
    
    // 20 colour counters per row, 15 rows.
    // Total of 300. Each handles a 16x16 pixel area.
    // Each colour counter reads 16*16=256 pixels, and then has 3 outputs:
    // the Red, Green and Blue scores.
    // Each colour counter will have a pixel input port, and an enable value.
    // On the posedge of enable, the contents of the pixel input will be added to the three outs.
    // If enable is turned on while reset is also on, then the colour counter results are zeroed.
    
    // This module, for the enables, will use sequential (blocking) logic to first set CCInput, then
    // set the CCEnables to ON. All other CCEnable are OFF.
    reg [15:0] CCInput[299:0];
    reg [299:0] CCEnable;
    reg counterzero;
    reg iomode;
    wire [15:0] scorer_out[299:0];
    wire [15:0] scoreb_out[299:0];
    wire [15:0] scoreg_out[299:0];
    genvar i;
    integer row;
    integer col;
    integer j;

    //DEBUG ONLY!
    wire [15:0] rscorer_out[299:0];
    wire [15:0] rscoreb_out[299:0];
    wire [15:0] rscoreg_out[299:0];
    
    
    generate
       for (i = 0; i < 300; i = i + 1) begin : CounterGen
          colourcounter CC(.pixel_in(CCInput[i]), .enable(CCEnable[i]), .outr(scorer_out[i]), .outb(scoreb_out[i]), .outg(scoreg_out[i]), .clock(pixel_clock), .reset(1'b0));
          //redcount RC(.pixel_in(CCInput[i]), .enable(CCEnable[i]), .outr(rscorer_out[i]), .outb(rscoreb_out[i]), .outg(rscoreg_out[i]), .clock(pixel_clock), .reset(1'b0));
          ColourMatcher RC(.pixel_in(CCInput[i]), .enable(CCEnable[i]), .outr(rscorer_out[i]), .outb(rscoreb_out[i]), .outg(rscoreg_out[i]), .clock(pixel_clock), .reset(1'b0), .pixel_set(pixelset));
          //EXOR exor(.I1(m[2 * i]), .I2(m[2 * i + 1], .o(t[i]));
       end
    endgenerate
    
    always@(posedge pixel_clock) begin
    CCEnable = 300'b0;
    //if (counter == 16'b0) begin
    //    counterzero <= 1'b0;
    //    iomode = ~iomode;
    //end
    if (pixel_on) begin
        for (row = 0; row <= 15; row = row + 1) begin
            for (col = 0; col <= 20; col = col + 1) begin
                if (ycounter < (((row)*16) ) && ycounter >= (((row-1)*16) ) && xcounter < (((col)*16) ) && xcounter >= (((col-1)*16) )) begin
                    //if (iomode) begin
                    CCInput[((row-1)*20) + col-1][15:0] = pixel_in[15:0];
                    CCEnable[((row-1)*20) + col-1] = 1'b1;
                    //end else begin
                    if (SW) begin
                    pixel_out[3:0] <= scoreb_out[((row-1)*20) + col-1][11:8];
                    pixel_out[7:4] <= scoreg_out[((row-1)*20) + col-1][11:8];
                    pixel_out[11:8] <= scorer_out[((row-1)*20) + col-1][11:8];
                    end else begin
                    pixel_out[3:0] <= rscoreb_out[((row-1)*20) + col-1][11:8];
                    pixel_out[7:4] <= rscoreg_out[((row-1)*20) + col-1][11:8];
                    pixel_out[11:8] <= rscorer_out[((row-1)*20) + col-1][11:8];
                    end
                    //end
                end
            end
        end
    /*
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
        */
        
        
        //Increment counter.
        if (counter >= 76799) begin
        counter <= 17'b0;
        //if (~iomode) begin
        //counterzero <= 1'b1;
        //for (j = 0; j < 299; j = j + 1) CCEnable[j] = 1'b1;
        //end
        //left_square <= left_square + 1;
        end
        else begin
        counter <= counter + 1;
        //counterzero <= 1'b0;
        end
        
        
       /* if (left_square >=  257) begin
        left_square <= 15'b0;
        top_square = top_square + 1;
        end
        
        if (top_square >=  177) begin
        top_square <= 15'b0;
        
        end
        */
        
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
