module fullsubtractor_tb;
reg a,b,bin;
wire difference,borrow;
integer i;
fullsubtractor dut(a,b,bin,difference, borrow);
initial begin
$monitor("a=%b b=%b bin=%b difference=%b borrow=%b",a,b,bin,difference,borrow);
for(i=0;i<8;i=i+1)begin
{a,b,bin}=i;
#10;
end
end
endmodule