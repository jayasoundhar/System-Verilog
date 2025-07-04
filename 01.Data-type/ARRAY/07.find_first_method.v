module tb;
  int array[10] = {1,2,3,4,5,1,2,3,4,5};
  int res[$];

  initial begin
    res = array.find_first(x) with (x < 5 & x >= 3);
    $display ("X:%p",res);
    $display ("Y:%p",array.find_first(y) with (y == 1));    
  end
endmodule

// X:'{3}
// Y:'{1}
