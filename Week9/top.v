module top (
    input [15:0] sw,
    input btnL, btnU, btnD, btnR, btnC,
    output [15:0] led
);
    wire [1:0] muxSel;
    wire [1:0] demuxSel;
    assign muxSel = {btnU, btnL};
    assign demuxSel = {btnR, btnD};
    mux mux_inst (sw[15:0], muxSel, btnC, demux_inst.in);
    demux demux_inst (mux_inst.out, demuxSel, btnC, led[3:0], led[7:4], led[11:8],led[15:12]);

endmodule
