module light(
    // Declare downstairs and upstairs input
    input downstairs, upstairs,

    // Declare stair light output
    output light
);

    assign light = downstairs ^ upstairs

endmodule
