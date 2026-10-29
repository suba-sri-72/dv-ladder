module basic_gate(
  input  a, b,
  output y_and, y_or, y_nand, y_nor, y_xor, y_xnor, y_nota, y_notb
);
  assign y_and  = a & b;
  assign y_or   = a | b;
  assign y_nand = ~(a & b);
  assign y_nor  = ~(a | b);
  assign y_xor  = a ^ b;
  assign y_xnor = ~(a ^ b);
  assign y_nota = ~a;
  assign y_notb = ~b;
endmodule
