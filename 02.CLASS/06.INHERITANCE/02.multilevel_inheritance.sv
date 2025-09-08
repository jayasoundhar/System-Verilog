class a;
  
  function void display();
    $display("class a");
  endfunction
  
endclass
class b extends a;
  
  function void disp();
    $display("class b");
  endfunction
  
endclass

class c extends b;
  
  function void dis();
    $display("class c");
  endfunction
  
endclass
module sample;
  c c1;
  initial begin
    c1 = new();
    c1.display();
    c1.disp();
    c1.dis();
  end
endmodule

// class a
// class b
// class c
