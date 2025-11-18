`timescale 1ns / 1ps

module DFF(
    input D,
    input reset,
    input clock,
    output reg Q,
    output NotQ
    );
    
    initial begin
        Q <= 0;
    end
    
    always @(posedge clock, posedge reset) begin
        if (reset)
            Q <= 0; //troubleshoot if needed
        else
            Q <= D;
    end
    
    assign NotQ = ~Q;
    
endmodule
