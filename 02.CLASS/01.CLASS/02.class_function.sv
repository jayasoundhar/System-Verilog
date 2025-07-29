class class_function;
  int a;
  
  function display();
    $display("value of a => %0d \n squre of a => %0d",a,a*a);
  endfunction
endclass
module tb;
  class_function cf;
  initial begin
    cf = new();
    cf.a = 5;
    cf.display();
  end
endmodule

// value of a => 5 
// squre of a => 25
