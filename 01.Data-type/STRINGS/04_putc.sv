module str_04;
  string A=("DESIGN_ENGINNER");
  initial begin
    $display("A=%s",A.putc(5,"d"));
  end
endmodule

// DESIdN_ENGINNER
