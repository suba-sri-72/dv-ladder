module cla_tb;
reg [3:0]a,b;
reg cin;
wire [3:0]s;
wire cout;
integer i,j,k;
cla dut(a,b,cin,s,cout);
initial begin
$monitor("a=%b b=%b cin=%b s=%b cout=%b",a,b,cin,s,cout);
for(i=0;i<16;i=i+1)
for(j=0;j<16;j=j+1)
for(k=0;k<2;k=k+1)begin
a=i;b=j;cin=k;
#5;
end
end
endmodule

