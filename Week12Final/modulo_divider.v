module modulo_divider (
    input CLK, RESET,
    output Q0, Q1, Q2, Qout
);
    wire carryOut1, carryOut2;
    wire Y0, Y1, Y2;
    wire SYNC_RESET;
    wire D;
// 3-bit adder - compute n + 1
    full_adder full_adder_inst0 (
        .A(Q0),
        .B(0), 
        .C(1),
        .Y(Y0),
        .carry(carryOut1)   
    );

    full_adder full_adder_inst1 (
        .A(Q1),
        .B(0),
        .C(carryOut1),
        .Y(Y1),
        .carry(carryOut2)   
    );

    full_adder full_adder_inst2 (
        .A(Q2),
        .B(0),
        .C(carryOut2),
        .Y(Y2)
    );


// d flipflops - store count

    d_flipflop DFF0 (
        .D(Y0& ~SYNC_RESET),
        .CLK(CLK),
        .Q(Q0),
        .RESET(RESET)
    );

    d_flipflop DFF1 (
        .D(Y1& ~SYNC_RESET),
        .CLK(CLK),
        .Q(Q1),
        .RESET(RESET)
    );

    d_flipflop DFF2 (
        .D(Y2& ~SYNC_RESET),
        .CLK(CLK),
        .Q(Q2),
        .RESET(RESET)
    );

    d_flipflop DFFFinal (
        .D(D),
        .CLK(CLK),
        .Q(Qout),
        .RESET(RESET)
    );

wire [2:0] Y_out;
wire check_trig;

assign Y_out = {Q2,Q1,Q0};
assign check_trig = ( Y_out == 3'b101) ? 1:0 ;

assign SYNC_RESET = (check_trig);
assign D = SYNC_RESET ^ Qout;

endmodule