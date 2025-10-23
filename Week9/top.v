module top (
    input [15:0] sw,
    input btnL, btnU, btnD, btnR, btnC
    output [15:0] led

);
    mux mux_inst (sw, btnU, btnL, btnC, demux_inst.in);
    demux demux_inst (mux_inst.out, btnU, btnL, btnC, led[3:0], led[7:4], led[11:8],led[15:12]);

endmodule
