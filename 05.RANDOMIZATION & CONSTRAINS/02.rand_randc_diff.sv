class random;
  rand bit[2:0] a;
  randc bit[2:0] b;
endclass

module tb;
  random rd;
  initial begin
    rd = new();
    repeat(10) begin
      rd.randomize();
      $display("a = %0d b = %0d",rd.a,rd.b);
    end
  end
endmodule


// a = rand  &  b = randc

// a = 6 b = 0
// a = 3 b = 6   RANDC:
// a = 4 b = 1   [2:0] has 8 combination,randc will run as cycle of random generation inside the combination,
// a = 7 b = 7   there is no repetation untill all the combination is generated.
// a = 5 b = 4   RAND:
// a = 3 b = 3   same like randc but it has repetation of values,it will randomly generate each time.
// a = 0 b = 5
// a = 7 b = 2
////////////////////////////////////////////////////
// a = 0 b = 5  5 & 2 has repeated after completion of all combination..
// a = 2 b = 2
