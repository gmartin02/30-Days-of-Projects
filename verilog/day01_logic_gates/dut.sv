module and2 (
  input a,
  input b,
  output y
);
  assign y = a & b;
endmodule

module xor2 (
  input a,
  input b,
  output y
);
  assign y = a ^ b;
endmodule

module or2 (
  input a,
  input b,
  output y
);
  assign y = a | b;
endmodule