module tb;
  int array[10] = {1,2,3,4,5,1,2,3,4,5};
  int res[$];

  initial begin
    res = array.find_last_index(x) with (x > 3 && x < 5);
    $display ("X:%p",res);
    $display ("Y:%p",array.find_last_index(y) with (y == 1));    
  end
endmodule

// X:'{8}
// Y:'{5}
