`timescale 1ns / 1ps

module comparator(
    input[2:0] comparatorInput,
    input reset,
    output resetTrigger,
    output comparatorOutput
    );
    
    assign comparatorOutput = comparatorInput[2] & comparatorInput[1] & ~comparatorInput[0];
    assign resetTrigger = reset | comparatorOutput;
    
endmodule
