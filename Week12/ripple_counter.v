module ripple_counter (
    input CLK, RESET,
    output [6:3] led
);

wire Q0, Q1, Q2;

