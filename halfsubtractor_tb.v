module halfsubtractor_tb;
reg a,b;
wire difference,borrow;
integer i;
halfsubtractor dut(a,b,difference,borrow);
initial begin
$monitor("a=%b b=%b difference=%b borrow=%b",a,b,difference,borrow);
for(i=0;i<4;i=i+1)begin
{a,b}=i;
#10;
end
end
endmodule