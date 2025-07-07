module str_04;
  string A=("DESIGN_ENGINNER");
  initial begin
    A.putc(5,"d");
    $display("A=%s",A);
  end
endmodule

// DESIdN_ENGINNER
