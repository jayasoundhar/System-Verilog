module tb;
  int a[5] = {1,2,3,4,5};
  int b[6];
  initial begin
    b[6] = $urandom_range(5,15);
    $display("unpacked array\n A => %p \n B => %p",a,b);
    
  end
endmodule

  // unpacked array
  // A => '{1, 2, 3, 4, 5} 
  // B => '{0, 0, 0, 0, 0, 0}
