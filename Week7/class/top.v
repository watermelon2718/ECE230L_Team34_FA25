module top (
    input sw[9:0],
    output led[13:0]
);

half_sub half_sub_inst (sw[0].sw[1],led[0],led[1]);


endmodule