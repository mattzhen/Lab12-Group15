// Implement binary state machine
module binary(
    input w,
    input clk,
    input rst,
    output z,
    output D2, D1, D0
);

    wire [2:0] Next;

    dff zero(
        .D(Next[0]),
        .Default(1'b0),
        .clk(clk),
        .Q(D0),
        .reset(rst)
    );

    dff one(
        .D(Next[1]),
        .Default(1'b0),
        .clk(clk),
        .Q(D1),
        .reset(rst)
    );

    dff two(
        .D(Next[2]),
        .Default(1'b0),
        .clk(clk),
        .Q(D2),
        .reset(rst)
    );

    assign z = (D1 & ~D0) | D2;
    assign Next[0] = (~w & ~D1 & ~D0) | (w & ~D2 & ~D1) | (~w & D1 & D0) | (w & ~D2 & ~D0);
    assign Next[1] = (~D1 & D0) | (D1 & ~D0) | (w & ~D2 & ~D1);
    assign Next[2] = w & (D2 | (D1 & D0));

endmodule