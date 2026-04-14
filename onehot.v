// Implement one-hot state machine
module onehot(
    input w,
    input clk,
    input rst,
    output z,
    output Astate, Bstate, Cstate, Dstate, Estate
);

    wire Anext;
    wire Bnext;
    wire Cnext;
    wire Dnext;
    wire Enext;

    assign Anext = 1'b0;
    assign Bnext = (~w & Astate) |(~w & Dstate) | (~w & Estate);
    assign Cnext = (~w & Bstate) | (~w & Cstate);
    assign Dnext = (w & Astate) | (w & Bstate) | (w & Cstate);
    assign Enext = (w & Dstate) | (w & Estate);
    assign z = Cstate | Estate;


    dff Adff(
        .Default(1'b1),
        .D(Anext),
        .clk(clk),
        .Q(Astate),
        .reset(rst)
    );

    dff Bdff(
        .Default(1'b0),
        .D(Bnext),
        .clk(clk),
        .Q(Bstate),
        .reset(rst)
    );

    dff Cdff(
        .Default(1'b0),
        .D(Cnext),
        .clk(clk),
        .Q(Cstate),
        .reset(rst)
    );

    dff Ddff(
        .Default(1'b0),
        .D(Dnext),
        .clk(clk),
        .Q(Dstate),
        .reset(rst)
    );

    dff Edff(
        .Default(1'b0),
        .D(Enext),
        .clk(clk),
        .Q(Estate),
        .reset(rst)
    );

endmodule