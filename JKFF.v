`timescale 1ns / 1ps

module JKFF(
    input J, K,
    input reset,
    input clock,
    output Q,
    output NotQ
    );
    
    wire d_input;
    
    assign d_input = (~K & Q) | (J & NotQ);
    
    DFF DFF_inst(
        .D(d_input),
        .reset(reset),
        .clock(clock),
        .Q(Q),
        .NotQ(NotQ)
    );
    
endmodule