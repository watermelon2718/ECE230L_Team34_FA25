module demux (
    input [3:0] in,
    input [1:0] select,
    input enable,

    output [3:0] Y1,
    output [3:0] Y2,
    output [3:0] Y3,
    output [3:0] Y4
);

    assign Y1 = ( (~select[0] && ~select[1] && enable) ? in : 0);
    assign Y2 = ( (select[0] && ~select[1] && enable) ? in : 0);
    assign Y3 = ( (~select[0] && select[1] && enable) ? in : 0);
    assign Y4 = ( (select[0] && select[1] && enable) ? in : 0);

endmodule