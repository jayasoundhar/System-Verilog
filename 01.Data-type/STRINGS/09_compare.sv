module str_09;
  string A="DESIGN";
  string B="DESIG";
  initial begin
    $display("A compare B %0d",A.compare(B));
  end
endmodule

// A compare B 1
