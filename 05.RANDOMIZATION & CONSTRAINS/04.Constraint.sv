class random1;
  rand bit[2:0] a;
  randc bit[2:0] b;
  
  constraint a_range {a>=6;}
  constraint b_range {b<2;}
endclass

module tb;
  random rd;
  initial begin
    rd = new();
    repeat(10) begin
      rd.randomize();
      $display(" module a = %0d b = %0d",rd.a,rd.b);
    end
  end
endmodule


// module a = 7 b = 0
// module a = 7 b = 1
// module a = 7 b = 0
// module a = 7 b = 1
// module a = 7 b = 0
// module a = 7 b = 1
// module a = 7 b = 0
// module a = 6 b = 1
// module a = 6 b = 0
// module a = 6 b = 1
