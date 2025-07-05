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
