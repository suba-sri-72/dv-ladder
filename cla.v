
module cla(
    input [3:0] a, b,
    input cin,
    output reg [3:0] s,
    output reg cout
);

reg [3:0] g, p;
reg c1, c2, c3;

always @(*) begin
    g = a & b;
    p = a ^ b;

    c1 = g[0] | (p[0] & cin);

    c2 = g[1] | (p[1] & g[0])
              | (p[1] & p[0] & cin);

    c3 = g[2] | (p[2] & g[1])
              | (p[2] & p[1] & g[0])
              | (p[2] & p[1] & p[0] & cin);

    cout = g[3] | (p[3] & g[2])
                | (p[3] & p[2] & g[1])
                | (p[3] & p[2] & p[1] & g[0])
                | (p[3] & p[2] & p[1] & p[0] & cin);

    s[0] = p[0] ^ cin;
    s[1] = p[1] ^ c1;
    s[2] = p[2] ^ c2;
    s[3] = p[3] ^ c3;
end

endmodule

