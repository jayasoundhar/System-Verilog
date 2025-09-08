class a;
  
  function void display();
    $display("class a");
  endfunction
  
endclass
class b extends a;
  
  function void display();
    super.display();
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

// class a
// class a
