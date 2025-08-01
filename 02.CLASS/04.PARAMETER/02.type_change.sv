class transfer #(parameter type typ = int);
  typ [4:0] a;
  
  function new();
    display("before");
    a = 20;
    display("after");
  endfunction
  
  function void display(string s);
    $display("%s a = %0d Type => %s",s,a,$typename(a));
  endfunction
endclass

module tb;
  transfer t1;
  initial begin
    t1 = new();
  end
endmodule
// before a = 0 Type => int[4:0]
// after a = 20 Type => int[4:0]
/////////////////////////////////////////////After parameter change//////////////////////////////////////////////////
class transfer #(parameter type typ = int);
  typ [4:0] a;
  
  function new();
    display("before");
    a = 20;
    display("after");
  endfunction
  
  function void display(string s);
    $display("%s a = %0d Type => %s",s,a,$typename(a));
  endfunction
endclass

module tb;
  transfer #(bit)t1;
  initial begin
    t1 = new();
  end
endmodule
// before a = 0 Type => bit[4:0]
// after a = 20 Type => bit[4:0]
