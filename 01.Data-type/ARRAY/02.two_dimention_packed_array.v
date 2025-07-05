module packed_static_arr;
  
  bit [1:0][8:0]b1;
  logic [1:0][8:0]b2;
  reg [1:0][8:0]b3;
  initial begin
    $display("b1=%0b b2=%0b b3=%0b",b1[0],b2[0],b3[0]);
    $display("b1=%0b b2=%0b b3=%0b",b1[1],b2[1],b3[1]);//default value..
    b1[0] = 8'd0;b1[1] = 8'd15;
    b2[0] = 8'd0;b2[1] = 8'd15;
    b3[0] = 8'h00;b3[1] = 8'hff;    
    $display("b1=%0b b2=%0b b3=%0b",b1[0],b2[0],b3[0]);
    $display("b1=%0b b2=%0b b3=%0b",b1[1],b2[1],b3[1]);//after assignment..
  end
endmodule

// b1=0 b2=x b3=x
// b1=0 b2=x b3=x
// b1=0 b2=0 b3=0
// b1=1111 b2=1111 b3=11111111
