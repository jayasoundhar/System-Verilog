class transfer #(parameter width = 3);
  bit [width-1:0] a;
  
  function new();
    display("before");
    a = 20;
    display("after");
  endfunction
  
  function void display(string s);
    $display("%s a = %0d",s,a);
  endfunction
endclass


module tb;
  transfer #(5) t1;
  initial begin
    t1 = new();
  end
endmodule

// before a = 0
// after a = 20
