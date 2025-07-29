class random;
  rand bit[2:0] a;
  randc bit[2:0] b;
  function void pre_randomize();
    $display("inside pre a = %0d b = %0d",this.a,this.b);
  endfunction
  
  function void post_randomize();
    $display(" inside post a = %0d b = %0d sum = %0d",this.a,this.b,a+b);
  endfunction
endclass

module tb;
  random rd;
  initial begin
    rd = new();
    repeat(3) begin
      rd.randomize();
      $display(" module a = %0d b = %0d",rd.a,rd.b);
    end
  end
endmodule

// inside pre a = 0 b = 0
// inside post a = 6 b = 0 sum = 6
// module a = 6 b = 0
// inside pre a = 6 b = 0
// inside post a = 3 b = 6 sum = 1
// module a = 3 b = 6
// inside pre a = 3 b = 6
// inside post a = 4 b = 1 sum = 5
// module a = 4 b = 1
