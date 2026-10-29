module halfadder_tb;
reg a,b;
wire sum,carry;
integer i;
halfadder dut(a,b,sum,carry);
initial begin
for(i=0;i<4;i=i+1)
begin
{a,b}=i;
#10;
end
end
initial 
$monitor("a=%b b=%b sum=%b carry=%b",a,b,sum,carry);
endmodule