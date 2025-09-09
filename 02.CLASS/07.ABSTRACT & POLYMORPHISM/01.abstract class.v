virtual class A;
  int a = 5;
  function void disp();
    $display("1.Value of a = %0d",a);
  endfunction
 
endclass
 
class B extends A;
 
endclass
 
module abstract_ex();
  B b1;
  initial begin
    b1 = new();
    b1.a = 10;
    b1.disp();
  end 
endmodule

// 1.Value of a = 10
