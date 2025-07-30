class car;
  string name;
  bit [3:0] price;
  
  function new();
    name = "MUSTANG GT";
    price = 4'd12;
  endfunction
  
  function void update(string name,bit[2:0]price);
    display();
    this.name = name;
    this.price = price;
    display();
  endfunction
  
  function void display();
    $display("name => %s \nprice => %0d",name, price);
  endfunction
  
endclass

module tb;
  car c1;
  initial begin
    c1 = new();
    c1.update("DEMON DOGE",4'd10);
  end
endmodule

// name => MUSTANG GT 
// price => 12
// name => DEMON DOGE 
// price => 2
