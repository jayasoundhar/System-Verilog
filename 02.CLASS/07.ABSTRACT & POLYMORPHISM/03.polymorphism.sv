virtual class A;
  int a = 5;
  virtual function void display();
    $display("1.Value of a = %0d",a);
  endfunction
 
endclass
 
class B extends A;
  int a = 6;
  function void display();
    $display("2.Value of a = %0d",a);
  endfunction
 
endclass

class c extends A;
 int a = 6;
 function void display();
   $display("3.Value of a = %0d",a);
 endfunction
 
endclass

module abstract_ex();
  A a1;
  B b1;
  c c1;
  initial begin
    b1 = new();
    b1.a = 10;
    b1.display();
    a1 = b1;
    a1.display();
    c1 = new();
    c1.a = 15;
    a1 = c1;
    a1.display();
  end 
endmodule

// 1.Value of a = 5
// 2.Value of a = 10
