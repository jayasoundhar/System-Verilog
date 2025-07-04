module tb;
  int array[10] = {1,2,3,4,5,6,7,8,9,0};
  int res[$];

  initial begin
    res = array.min();
    $display ("min: %p", res);
    $display ("min: %p",array.min());
  end
endmodule

// min: '{0}
// min: '{0}
