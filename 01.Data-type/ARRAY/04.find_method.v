module tb;
  int array[10] = {1,2,3,4,5,6,7,8,9,0};
  int res[$];

  initial begin
    res = array.find(x) with (x > 3);
    $display ("X:%p",res);// we can't use same variables for multiple method's.......
    $display ("Y:%p",array.find(y) with (y < 3));    
  end
endmodule

//X:'{4, 5, 6, 7, 8, 9}
//Y:'{1, 2, 0}
