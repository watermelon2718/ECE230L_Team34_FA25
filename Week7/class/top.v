module top (
    input sw[9:0],
    output led[13:0]
);

half_sub half_sub_inst (sw[0],sw[1],led[0],led[1]);

twos_compliment twos_compliment_inst (sw[2],sw[3],sw[4],sw[5],sw[6],sw[7],sw[8],sw[9],led[6],led[7],led[8],led[9],led[10],led[11],led[12],led[13]);

endmodule