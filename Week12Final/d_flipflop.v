module d_flipflop (
    input D, CLK,
    input RESET,
    output reg Q,
    output NotQ
);
    initial begin
        Q <= 0;
    end

    always @(posedge CLK, posedge RESET) begin
       Q <= (RESET == 1) ? 0 : D;
    end
    
    
    assign NotQ = ~Q; 

endmodule