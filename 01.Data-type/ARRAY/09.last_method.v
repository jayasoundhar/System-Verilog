module tb;
  int array[10] = {1,2,3,4,5,1,2,3,4,5};
  int res[$];

  initial begin
    res = array.find_last(x) with (x > 3 && x < 5);
    $display ("X:%p",res);
    $display ("Y:%p",array.find_last(y) with (y == 1));    
  end
endmodule

// X:'{4}
// Y:'{1}
