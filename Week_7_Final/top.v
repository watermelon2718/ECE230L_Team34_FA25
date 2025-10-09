module top (
    input [9:0] sw,
    output [13:0] led
);

half_sub half_sub_inst (sw[0],sw[1],led[0],led[1]);

ones_compliment ones_compliment_inst (sw[2],sw[3],sw[4],sw[5],sw[6],sw[7],sw[8],sw[9],led[2], led[3], led[4], led[5]);

twos_compliment twos_compliment_inst (sw[2],sw[3],sw[4],sw[5],sw[6],sw[7],sw[8],sw[9],led[6],led[7],led[8],led[9],led[10],led[11],led[12],led[13]);

endmodule