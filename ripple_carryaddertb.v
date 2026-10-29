module ripple_carryaddertb;
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire cout;
integer i,j,k,errors;
ripple_carryadder dut(a,b,cin,sum,cout);
initial begin
errors=0;
for(i=0;i<16;i=i+1)
for(j=0;j<16;j=j+1)
for(k=0;k<2;k=k+1)begin
a=i;b=j;cin=k;
#10
if ({cout,sum}!== (a+b+cin))begin
$error("a=%d b=%d cin=%d -> got %d , %d",a,b,cin,{cout,sum},a+b+cin);
errors=errors+1;
end
end
if(errors==0) $display("pass 512 cases");
else $display("fail %d",errors);
$stop;
end
endmodule
