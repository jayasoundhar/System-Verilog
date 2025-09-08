class a;
  
  function void display();
    $display("class a");
  endfunction
  
endclass
class b extends a;
  
  function void display();
    $display("class b");
  endfunction
  
endclass


module sample;
  b b1;
  initial begin
    b1 = new();
    b1.display();
    b1.display();
  end
endmodule

// class b
// class b
