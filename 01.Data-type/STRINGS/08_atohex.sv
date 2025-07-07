module str_8;
  string A="fa";
  byte b;
  initial begin
    b = A.atohex;
    $display("A=%h",A.atohex);
    $display("A=%h",A);
    $display("B=%h",b);
  end
endmodule

// A=000000fa
// A=fa
// B=fa
