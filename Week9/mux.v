module mux(
    input [15:0] in,
    input [1:0] sel,
    input enable,
    output [3:0] out
);
    assign out = enable == 1 ? (sel == 0 ? in[3:0] :
                 sel == 1 ? in[7:4] :
                 sel == 2 ? in[11:8] : in[15:12]) : 0;
endmodule
