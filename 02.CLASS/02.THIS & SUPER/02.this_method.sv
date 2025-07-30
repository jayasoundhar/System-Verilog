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

class model extends car;
  string version;
  
  function new()
    version = "v1";
    this.display();
  endfunction
  
  function display();
    $display("name => %s price => %0d",{name,".",version},price);
  endfunction
endclass
    
module tb;
  model m1;
  initial begin
    m1 = new();
    m1.update("DEMON DOGE",4'd10);
  end
endmodule
