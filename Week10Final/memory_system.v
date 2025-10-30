module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
);
    reg en = 1;
    wire [7:0] byteData[3:0];
    wire [3:0] byteStore;
    wire [7:0] byteMemory[3:0];
    
    demux #(1) enable_demux (
        .data(store),
        .sel(addr),
        .A(byteStore[0]),
        .B(byteStore[1]),
        .C(byteStore[2]),
        .D(byteStore[3])
    );
    
    demux input_demux (
        .data(data),
        .sel(addr),
        .A(byteData[0]),
        .B(byteData[1]),
        .C(byteData[2]),
        .D(byteData[3])
    );
    
    mux output_mux (
        .A(byteMemory[0]),
        .B(byteMemory[1]),
        .C(byteMemory[2]),
        .D(byteMemory[3]),
        .sel(addr),
        .enable(en),
        .out(memory)
    );
   
    genvar i;
    generate
        for (i=0; i<= 3; i = i + 1) begin
            byte_memory bytes(
                .data(byteData[i]),
                .store(byteStore[i]),
                .memory(byteMemory[i])
            );
        end
    endgenerate
    

    // This should instantiate 4 instances of
    // byte_memory, and then demultiplex
    // data and store into the one selected by
    // addr

    // It should then multiplex the output of the
    // memory specified by addr into the memory
    // output for display on the LEDs

    // you will need 2 demultiplexers:
    // 1. Demultiplex data -> selected byte
    // 2. Demultiplex store -> selected byte

    // and one multiplexer:
    // 1. Multiplex selected byte -> memory

endmodule

