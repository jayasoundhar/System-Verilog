class random;
  rand bit[2:0] a;
  randc bit[2:0] b;
endclass

module tb;
  random rd;
  initial begin
    rd = new();
    rd.randomize();
    $display("a = %0d b = %0d",rd.a,rd.b);
  end
endmodule


//  a = 6 b = 0
