// do I need a reset? 

module d_flipflop (
    input D, CLK,

//should these be reg?
    output reg Q,
    output NotQ
);
    initial begin
        Q <= 0;
    end

    always @(posedge CLK) begin
        Q <= D;
    end

    assign NotQ = ~Q; // bruh is this right

endmodule

// -------------------------- //

//TODO: copied from d_latch -- DELETE later

module d_latch(
    input D, E,
    output reg Q,
    output NotQ
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

    assign NotQ = ~Q; //question

endmodule