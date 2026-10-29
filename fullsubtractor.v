module fullsubtractor(input a,b,bin,output reg difference,borrow);
always@(*)begin
difference=a^b^bin;
borrow=(~a&b)|(~a&bin)|(b&bin);
end
endmodule