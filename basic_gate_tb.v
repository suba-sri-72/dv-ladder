module basic_gate_tb;
  reg a, b;
  wire y_and, y_or, y_nand, y_nor, y_xor, y_xnor, y_nota, y_notb;

  basic_gate dut (
    .a(a), .b(b),
    .y_and(y_and), .y_or(y_or), .y_nand(y_nand), .y_nor(y_nor),
    .y_xor(y_xor), .y_xnor(y_xnor), .y_nota(y_nota), .y_notb(y_notb)
  );

  initial begin
    $monitor("t=%0t a=%b b=%b | and=%b or=%b nand=%b nor=%b xor=%b xnor=%b nota=%b notb=%b",
             $time, a, b, y_and, y_or, y_nand, y_nor, y_xor, y_xnor, y_nota, y_notb);
    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;
    $stop;
  end
endmodule
