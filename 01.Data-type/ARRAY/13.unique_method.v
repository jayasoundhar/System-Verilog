module tb;
  int array[10] = {1,2,3,4,5,6,7,8,9,0};
  int res[$];

  initial begin
    res = array.unique(x) with (x < 3);
    $display ("unique: %p", res);
    $display ("unique: %p",array.unique(x) with (x > 3));
  end
endmodule

// unique: '{3, 1}
// unique: '{1, 4}
