module d_latch(
    input D, E,
    output Q, NotQ
);

    // Will contain D-Latch behavior
    // S: (D NAND E) NAND ~Q
    // R: (~D NAND E) NAND Q
    // have to use reg and always block to mitigate 
    //verilog issues???

    always @(D, E) begin
        if (E)
            Q <= D;
    end

    assign NotQ = ~Q;

endmodule