module tb;
  int a[2][2];
  int b[3][6];
  initial begin
    a[0] = {1,2};
    a[1] = {4,5};
    for(int i=0;i<3;i++)begin
      for(int j=0;j<6;j++)begin
        b[i][j] = $urandom_range(5,15);
      end
    end
    $display("unpacked array\n A => %p \n B => %p",a,b);
  end
endmodule


// A => '{'{1, 2}, '{4, 5}} 
// B => '{'{14, 9, 13, 5, 8, 8}, '{13, 14, 5, 14, 7, 11}, '{14, 8, 15, 11, 11, 5}}
