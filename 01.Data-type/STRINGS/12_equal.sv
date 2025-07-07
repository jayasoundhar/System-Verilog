module str_12;
  string A="DESIGN";
  string B="DESIGN";
  initial begin
    if(A==B)
      $display("A and B are equal");
      else
        $display("A and B are not equal");
  end
endmodule

// A and B are equal
