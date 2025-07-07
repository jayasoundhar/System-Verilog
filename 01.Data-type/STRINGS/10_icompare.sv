module str_10;
  string A="VERIFICAT";
  string B="verification";
  initial begin
    $display("A icompare B %d",A.icompare(B));
  end
endmodule

// A icompare B  -3
