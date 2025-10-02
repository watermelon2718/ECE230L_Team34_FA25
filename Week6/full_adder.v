module full_adder (
    input A, B, C,
    output Y, carry
);

    assign Y = A ^ B ^ C;
    assign carry = (A & B) + (B & C) + (A & C);

endmodule
