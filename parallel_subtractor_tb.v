module parallel_subtractor_tb;
reg [3:0]a,b;
reg bin;
wire [3:0]difference;
wire borrow;
integer i,j,k;
parallel_subtractor dut(a,b,bin,difference,borrow);
initial begin
$monitor("a=%b b=%b bin=%b difference=%b borrow=%b",a,b,bin,difference,borrow);
for(i=0;i<16;i=i+1)
for(j=0;j<16;j=j+1)
for(k=0;k<2;k=k+1)begin
a=i;b=j;bin=k;
#10;
end
end
endmodule