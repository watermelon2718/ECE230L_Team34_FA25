module ones_complement (
    input A, B, C, D, E, F, G, H;
    output bit0, bit1, bit2, bit3;

    wire carryOut0, carryOut1, carryOut2, carryOut3;

    full_adder full0 (
        .A(D),
        .B(H),
        .C(full3.carry),
        .Y(bit0),
        .carry(carryOut0)   
    );

    full_adder full1 (
        .A(C),
        .B(G),
        .C(carryOut0),
        .Y(bit1),
        .carry(carryOut1)   
    );

    full_adder full2 (
        .A(B),
        .B(F),
        .C(carryOut1),
        .Y(bit2),
        .carry(carryOut2)   
    );

    full_adder full3 (
        .A(A),
        .B(E),
        .C(carryOut2),
        .Y(bit3),
        .carry(carryOut3)   
    );



);