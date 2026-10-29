module parallel_subtractor(input [3:0]a,b,input bin,output [3:0]difference,output borrow);
wire w1,w2,w3;
fullsubtractor fs0(a[0],b[0],bin,difference[0],w1);
fullsubtractor fs1(a[1],b[1],w1,difference[1],w2);
fullsubtractor fs2(a[2],b[2],w2,difference[2],w3);
fullsubtractor fs3(a[3],b[3],w3,difference[3],borrow);
endmodule