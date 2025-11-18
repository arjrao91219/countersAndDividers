`timescale 1ns / 1ps

module top(
    input btnU, btnC,
    output [6:0] led
    );
    
    rippleCounter ripple_inst(
        .clock(btnC),
        .reset(btnU),
        .counterOut(led[2:0])
    );
    
    moduloCounter moduloCounter_inst(
        .clock(btnC),
        .reset(btnU),
        .stateOut(led[5:3]),
        .counterOut(led[6])
    );
    
endmodule
