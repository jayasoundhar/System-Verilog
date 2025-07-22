module enum_datatype;
  
  enum { red = 0, green, blue = 6, yellow, white = 15, black } Colors;
 
  initial begin
    Colors = Colors.first;
    
    $display("num => %0d",Colors.num);
    $display("last => %0d",Colors.last);
    $display("prev => %0d",Colors.prev);
    $display("prev of 2 => %0d",Colors.prev(2));
    $display("next => %0d",Colors.next);
    $display("next => %0d",Colors.next());
  
    for(int i=0;i < 8;i++) begin
      $display("Value of  %0s \t is = %0d",Colors.name,Colors);
       Colors = Colors.next;      
    end
  end
endmodule

// num => 6
// last => 5
// prev => 5
// prev of 4 => 5
// next => 1
// Value of red is = 0
// Value of green is = 1
// Value of blue is = 2
// Value of yellow is = 3
// Value of white is = 4
// Value of black is = 5
// Value of red is = 0
// Value of green is = 1


