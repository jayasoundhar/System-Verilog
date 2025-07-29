class class_function;
  int a;
  
  function new();
    a = 7;
    $display("value of a => %0d \n squre of a => %0d",a,a*a);
  endfunction
endclass
module tb;
  class_function cf;
  initial begin
    cf = new();
  end
endmodule


// value of a => 7 
// squre of a => 49
