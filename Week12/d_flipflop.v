module d_flipflop (
    input D, CLK,
    input RESET,
    output reg Q,
    output NotQ
);
    initial begin
        Q <= 0;
    end

    always @(posedge CLK) begin
        Q <= RESET ? 0 : D;
    end

    assign NotQ = ~Q; 

endmodule