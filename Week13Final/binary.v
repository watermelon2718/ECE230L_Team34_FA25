module binary(
    input w,
    input clk, reset,
    output [2:0] State, //is this right?
    output z
);

    // wire [2:0] State;
    wire [2:0] Next;
    wire [2:0] current;
    assign State = current;
    
    dff zero(
        .D(Next[0]),
        .clk(clk),
        .Q(current[0]),
        .reset(reset),
        .Default(1'b0)
    );

    dff one(
        .D(Next[1]),
        .clk(clk),
        .Q(current[1]),
        .reset(reset),
        .Default(1'b0)
    );

    dff two (
        .D(Next[2]),
        .clk(clk),
        .Q(current[2]),
        .reset(reset),
        .Default(1'b0)
    );

    //TODO
    assign z = (current[2]) | (current[1] & ~current[0]);
    assign Next[0] = ~w & ((~current[1] & ~current[0]) | (current[1] & current[0])) | w & ( (~current[2] & ~current[1]) | (current[1] & ~current[0]) );
    assign Next[1] = (current[1] ^ current[0]) | (w & ~current[2] & ~current[1]);
    assign Next[2] = (w & current[2]) | (w & current[1] & current[0]);

endmodule

