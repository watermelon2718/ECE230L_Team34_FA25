module top(
    input [15:0] sw,
    output [15:0] led
);

    genvar i;
    generate 
        for (i=0; i< 15; i = i + 1)
            assign led[i] = sw[i];
    endgenerate

endmodule
