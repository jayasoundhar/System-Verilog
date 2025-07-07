module str_07;
  string A;
  integer s = 12345;
  initial begin
    A.itoa(s);
    $display("A=%0d",A);
  end
endmodule


