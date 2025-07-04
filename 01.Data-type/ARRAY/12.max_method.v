module tb;
  int array[10] = {1,2,3,4,5,6,7,8,9,0};
  int res[$];

  initial begin
    res = array.max();
    $display ("min: %p", res);
    $display ("min: %p",array.max());
  end
endmodule

// min: '{9}
// min: '{9}
