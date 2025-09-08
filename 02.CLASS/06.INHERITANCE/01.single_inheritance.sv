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


module sample;
  b b1;
  initial begin
    b1 = new();
    b1.display();
    b1.disp();
  end
endmodule

// class a
// class b
