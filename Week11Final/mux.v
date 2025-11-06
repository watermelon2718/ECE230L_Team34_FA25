module mux #(parameter WIDTH = 8)
(
    input [WIDTH-1:0] A,
    input [WIDTH-1:0] B,
    input sel,
    // input enable,
    output reg [WIDTH-1:0] out
    
);
    always @(*) begin 
        if (sel)
            out <= A;
        else
            out <= B;
    end
endmodule