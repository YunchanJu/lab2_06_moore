`timescale 1ns/1ps
module lab2_moore(input wire clk,rst,button,input wire [7:0] sw,output wire [7:0] led);
wire reset,press; wire [7:0] switches;
input_frontend inputs(clk,rst,button,sw,reset,press,switches);
wire [1:0] value; moore_cycle core(clk,reset,press,switches[7],value); assign led={6'b0,value};
endmodule
