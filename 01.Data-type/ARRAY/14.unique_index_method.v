module tb;
  int array[10] = {1,2,3,4,5,6,7,8,9,0};
  int res[$];

  initial begin
    res = array.unique_index;
    $display ("unique_index: %p", res);
    $display ("unique_index: %p",array.unique_index);
  end
endmodule

// unique_index: '{9, 0, 1, 2, 3, 4, 5, 6, 7, 8}
// unique_index: '{9, 0, 1, 2, 3, 4, 5, 6, 7, 8}
