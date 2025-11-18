`timescale 1ns / 1ps

module rippleCounter(
    input clock,
    input reset,
    output [2:0] counterOut
);
    
    wire[2:0] rippleOut;
    
    TFF rippleStage1(
        .T('b1),
        .reset(reset),
        .clock(clock),
        .Q(rippleOut[0])     
    );
    
    TFF rippleStage2(
        .T('b1),
        .reset(reset),
        .clock(rippleOut[0]),
        .Q(rippleOut[1])     
    );
    
    TFF rippleStage3(
        .T('b1),
        .reset(reset),
        .clock(rippleOut[1]),
        .Q(rippleOut[2])     
    );
    
    assign counterOut = rippleOut;
    
endmodule
