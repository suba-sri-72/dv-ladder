module fulladder_tb;
reg a,b,c;
wire sum,carry;
integer i;
fulladder dut(a,b,c,sum,carry);
initial begin
for(i=0;i<8;i=i+1)begin
{a,b,c}=i;
#10;
end
end
initial
$monitor("a=%b b=%b c=%b sum=%b carry=%b",a,b,c,sum,carry);
endmodule 