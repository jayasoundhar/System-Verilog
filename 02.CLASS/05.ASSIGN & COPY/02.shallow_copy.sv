class car;
  
  int price;
  static string name;
  string version;
  //.................constructor....................
  function new();
    
    this.price = 100;
    this.name = "H";
    this.version = "V1";
    
    name = {name,".",version};
    $display("name = %s",this.name);
    
  endfunction
  
  function void update(string version,string name);
    
    $display("without this keyword");
    name = name;
    $display("function_name = %s name = %s",name,this.name);
    
    $display("with this keyword");
    this.name = {name,".",version};
    $display("function_name = %s name = %s",name,this.name);
    
    $display("without this keyword");
    version = version;
    $display("function_version = %s version = %s",version,this.version);
    
    $display("with this keyword");
    this.version = version;
    $display("function_version = %s version = %s",version,this.version);
    
    this.price = this.price*2;
    
  endfunction
  
  function void display();
    $display("name => %s price => %0d",name,price);
  endfunction
endclass

module tb;
  initial begin
    car c1,c2;
    $display("...............................shallow copy.......................................");
    c1 = new();
    c1.display();

    c2 = new c1;
    c2.display();
    $display("...............................updating c2.......................................");
    c2.update("v2","mohan");
    c2.display();

    c1.display();
    $display("...............................updating c1.......................................");
    c1.update("v3","H");
    c1.display();
    c2.display();
  end
endmodule


// ...............................shallow copy.......................................
// name = H.V1
// name => H.V1 price => 100
// name => H.V1 price => 100
// ...............................updating c2.......................................
// without this keyword
// function_name = mohan name = H.V1
// with this keyword
// function_name = mohan name = mohan.v2
// without this keyword
// function_version = v2 version = V1
// with this keyword
// function_version = v2 version = v2
// name => mohan.v2 price => 200
// name => mohan.v2 price => 100
// ...............................updating c1.......................................
// without this keyword
// function_name = H name = mohan.v2
// with this keyword
// function_name = H name = H.v3
// without this keyword
// function_version = v3 version = V1
// with this keyword
// function_version = v3 version = v3
// name => H.v3 price => 200
// name => H.v3 price => 200
