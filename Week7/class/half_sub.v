module half_sub (
    input A,B,
    output Y, Borrow
);

assign Y = A ^ B;
assign Borrow = B & !A;

endmodule