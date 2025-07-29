class simple_class;
  int a;
endclass

module sc;
  simple_class sc1;
  initial begin
    sc1 = new();
    sc1.a=20;
    $display(sc1.a);
  end
endmodule
