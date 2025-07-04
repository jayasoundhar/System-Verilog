module packed_static_arr;
  
  bit [8:0]b1;
  logic [8:0]b2;
  reg [8:0]b3;
  initial begin
    $display("b1=%0b b2=%0b b3=%0b",b1,b2,b3);//default value..
    b1 = 8'hb9;
    b2 = 8'd11;
    b3 = 8'hff;    
    $display("b1=%0b b2=%0b b3=%0b",b1,b2,b3);//after assignment..
  end
endmodule
// b1=0 b2=x b3=x
// b1=10111001 b2=1011 b3=11111111


module packed_static_arr;
  
  bit [1:0][8:0]b1;
  logic [1:0][8:0]b2;
  reg [1:0][8:0]b3;
  initial begin
    $display("b1=%0b b2=%0b b3=%0b",b1,b2,b3);//default value..
    b1[0] = 8'd0;b1[1] = 8'd15;
    b2[0] = 8'd0;b2[1] = 8'd15;
    b3[0] = 8'h00;b3[1] = 8'hff;    
    $display("b1=%0b b2=%0b b3=%0b",b1,b2,b3);//after assignment..
  end
endmodule
  

b1=0 b2=x b3=x
# b1=1111000000000 b2=1111000000000 b3=11111111000000000
