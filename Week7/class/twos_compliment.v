module twos_compliment (
    input bit0, bit1, bit2, bit3, bit4, bit5, bit6, bit7,
    output out0, out1, out2, out3, out4, out5, out6, out7
);
wire nuke;


full_adder add0 (~bit0, 1, 0, out0, add1.C);

full_adder add1 (~bit1, 0, add0.carry, out1, add2.C);

full_adder add2 (~bit2, 0, add1.carry, out2, add3.C);

full_adder add3 (~bit3, 0, add2.carry, out3, add4.C);

full_adder add4 (~bit4, 0, add3.carry, out4, add5.C);

full_adder add5 (~bit5, 0, add4.carry, out5, add6.C);

full_adder add6 (~bit6, 0, add5.carry, out6, add7.C);

full_adder add7 (~bit7, 0, add6.carry, out7, nuke);

endmodule

