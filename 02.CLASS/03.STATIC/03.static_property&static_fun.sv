class static_property;
    static byte a;  
    static byte b;
  
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

 // NORMAL: a =1 STATIC: b =1
 // NORMAL: a =2 STATIC: b =2
 // NORMAL: a =3 STATIC: b =3
 // NORMAL: a =4 STATIC: b =4
