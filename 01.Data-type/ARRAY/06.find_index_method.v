module tb;
  int array[10] = {1,2,3,4,5,6,7,8,9,0};
  int res[$];

  initial begin
    res = array.find_index(x) with (x == 4);
    $display ("X:%0d",res[0]);
    res = array.find_index(y) with (y < 3);
    $display ("Y:%p",res);    
  end
endmodule

// X:3
// Y:'{0, 1, 9}
