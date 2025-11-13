module d_flipflop (
    input D, CLK,
    output reg Q,
    output NotQ
);
    initial begin
        Q <= 0;
    end

    always @(posedge CLK) begin
        Q <= D;
    end

    assign NotQ = ~Q; 

endmodule