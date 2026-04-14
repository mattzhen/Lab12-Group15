module top(
    input sw, // w
    output [9:0] led, // see IO table
    input btnC, // clk
    input btnU // reset
);

    // Hook up binary and one-hot state machines

    onehot onehot_inst(
        .w(sw),
        .clk(btnC),
        .rst(btnU),
        .z(led[0]),
        .Astate(led[2]),
        .Bstate(led[3]),
        .Cstate(led[4]),
        .Dstate(led[5]),
        .Estate(led[6])
    );

    binary binary_inst(
        .w(sw),
        .clk(btnC),
        .rst(btnU),
        .z(led[1]),
        .D2(led[9]),
        .D1(led[8]),
        .D0(led[7])
    );

endmodule