// Implement top level module
module top (
    input [7:0] sw,
    output [5:0] led
);
    wire carryOut1;

    light light_inst (
        .downstairs(sw[0]),
        .upstairs(sw[1]),
        .light(led[0])
    );

    adder adder_inst (
        .A(sw[2]),
        .B(sw[3]),
        .Y(led[1]),
        .carry(led[2])   
    );

    full_adder full_adder_inst1 (
        .A(sw[4]),
        .B(sw[6]),
        .C(0),
        .Y(led[3]),
        .carry(carryOut1)   
    );

    full_adder full_adder_inst1 (
        .A(sw[5]),
        .B(sw[7]),
        .C(carryOut1),
        .Y(led[4]),
        .carry(led[5])   
    );

endmodule
