module halfsubtractor(input a,b,output reg difference,borrow);
always@(*)begin
difference=a^b;
borrow=~a&b;
end
endmodule
