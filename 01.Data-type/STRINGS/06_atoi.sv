module str_06;
  string A=("3455647RING");
  int b;
  initial begin
    b = A.atoi();
    $display("A=%d",A.atoi());
    $display("A=%d",A);
    $display("A=%d",b);
  end
endmodule

// A=    3455647
// A=3455647RING
// A=    3455647
