//TODO
// we want to divide our 100 MHz clock
//to get a clock that toggles less frequently lol
// divide by 12 with a modulo divider

// full adder
// D flipflop

//is that RESET asynchronous?

module modulo_divider (
    input CLK, RESET,
    output [3:0] led
);
    wire carryOut1, carryOut2;
    wire Y0, Y1, Y2;
    wire nuke;
    wire CmpReset;


    wire Q0, Q1, Q2;

// 3-bit adder - compute n + 1
//TODO: change inputs/outputs
    full_adder full_adder_inst1 (
        .A(Q0),
        .B(sw[6]), // TODO: enable
        .C(0),
        .Y(Y0),
        .carry(carryOut1)   
    );

    full_adder full_adder_inst2 (
        .A(Q1),
        .B(0),
        .C(carryOut1),
        .Y(Y1),
        .carry(carryOut2)   
    );

    full_adder full_adder_inst2 (
        .A(Q2),
        .B(0),
        .C(carryOut2),
        .Y(Y2),
        .carry(nuke) // TODO: is this right?
    );


// d flipflops - store count
//TODO: change D to bit values out of adder

    d_flipflop DFF0 (
        .D(Y0),
        .CLK(CLK),
        .Q(Q0),
        .NotQ(nuke),
        .RESET(CmpReset)
    );

    d_flipflop DFF1 (
        .D(Y1),
        .CLK(CLK),
        .Q(Q1),
        .NotQ(nuke),
        .RESET(CmpReset)
    );

    d_flipflop DFF2 (
        .D(Y2),
        .CLK(CLK),
        .Q(Q2),
        .NotQ(nuke),
        .RESET(CmpReset)
    );
assign CmpReset = Q2 & Q0;
//Detection mechanism -- hook up to output bits
// count 0 - 5 = modulo 6
// Q2 Q1 Q0 = 101
// if Q2 AND Q0 -> reset

endmodule