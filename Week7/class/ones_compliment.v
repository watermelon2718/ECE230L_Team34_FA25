module ones_compliment (
    input A0, A1, A2, A3, B0, B1, B2, B3,
    output out0, out1, out2, out3
);
wire A,B,C,D;
wire msbCarry;

full_adder add0 (A0, B0, 0, A, add1.C);
full_adder add1 (A1, B1, add0.carry, B, add2.C);
full_adder add2 (A2, B2, add1.carry, C, add3.C);
full_adder add3 (A3, B3, add2.carry, D, msbCarry);

full_adder add4 (A,0, msbCarry, out0, add5.C);
full_adder add5 (B,0, add4.carry, out1, add6.C);
full_adder add6 (C,0, add5.carry, out2, add7.C);
full_adder add7 (D,0, add6.carry, out3, 0);

endmodule