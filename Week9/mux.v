module mux(
    input [15:0] in,
    input [1:0] sel,
    input enable,
    output [3:0] out
);
    assign out = (sel == 0 ? out[3:0]:
                 sel == 1 ? out[7:4]:
                 sel == 2 ? out[11:8]: out[15:12]) & enable;
endmodule
