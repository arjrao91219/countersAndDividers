`timescale 1ns / 1ps

module moduloCounter(
    input clock,
    input reset,
    output [2:0] stateOut,
    output counterOut
    );
    
    wire[2:0] adderOut;
    wire[2:0] adderIn;
    wire[1:0] carryOut;
    wire compOut;
    wire compReset;
    
    DFF DFF_inst0(
    .D(adderOut[0]),
    .clock(clock),
    .reset(compReset),
    .Q(adderIn[0])
    );
    
    DFF DFF_inst1(
    .D(adderOut[1]),
    .clock(clock),
    .reset(compReset),
    .Q(adderIn[1])
    );
    
    DFF DFF_inst2(
    .D(adderOut[2]),
    .clock(clock),
    .reset(compReset),
    .Q(adderIn[2])
    );
    
    full_adder fullAdder_inst0(
       .A(adderIn[0]),
       .B('b1),
       .Cin('b0),
       .Cout(carryOut[0]),
       .Y(adderOut[0])
    );
    
        full_adder fullAdder_inst1(
       .A(adderIn[1]),
       .B('b0),
       .Cin(carryOut[0]),
       .Cout(carryOut[1]),
       .Y(adderOut[1])
    );
    
        full_adder fullAdder_inst2(
       .A(adderIn[2]),
       .B('b0),
       .Cin(carryOut[1]),
       .Cout(carryOut[2]),
       .Y(adderOut[2])
    );
     
     comparator comparator_inst(
        .comparatorInput(adderIn),
        .reset(reset),
        .resetTrigger(compReset),
        .comparatorOutput(compOut)
     );
     
     DFF DFF_inst4(
    .D(compOut),
    .clock(clock),
    .reset(reset),
    .Q(counterOut)
    );
    
    assign stateOut = adderIn;
     
endmodule
