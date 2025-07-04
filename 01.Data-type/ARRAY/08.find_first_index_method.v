module tb;
  int array[10] = {1,2,3,4,5,1,2,3,4,5};
  int res[$];

  initial begin
    res = array.find_first_index(x) with (x > 4);
    $display ("X:%p",res);
    $display ("Y:%p",array.find_first_index(y) with (y == 1));    
  end
endmodule

// X:'{4}
// Y:'{0}
