module adder(
    // Declare your A/B inputs
    input A, B,
    // Declare Y output
    // Declare carry output
    output Y, carry
);

    assign Y = A ^ B;
    assign carry = A & B;

endmodule
