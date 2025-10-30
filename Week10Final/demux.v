module demux #(parameter WIDTH = 8)
(
    input [WIDTH-1:0] data,
    input [1:0] sel,
    output reg [WIDTH-1:0] A,
    output reg [WIDTH-1:0] B,
    output reg [WIDTH-1:0] C,
    output reg [WIDTH-1:0] D
);
    wire [WIDTH-1:0] nuke; 
    
    always @(*) begin 
        case(sel)
            2'b00: {D, C, B, A} <= {nuke, nuke, nuke, data};
            2'b01: {D, C, B, A} <= {nuke, nuke, data, nuke};
            2'b10: {D, C, B, A} <= {nuke, data, nuke, nuke};
            2'b11: {D, C, B, A} <= {data, nuke, nuke, nuke};    
        endcase
    end

endmodule

