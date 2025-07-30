class static_property;
    byte a;  
    byte b;
  
  function new();
   	++a;
    ++b;
  endfunction
  
  static function void display();
    $display(" NORMAL: a =%0d STATIC: b =%0d",a, b);
  endfunction

endclass

module test;
  initial begin
    static_property handle[4] ;
    
    foreach (handle[i])begin
      handle[i] = new();
      handle[i].display();

    end
  end
endmodule

// xmvlog: *E,CLSNSU (design.sv,11|46): A static class method cannot access non static class members.
//     $display(" NORMAL: a =%0d STATIC: b =%0d",a, b);
