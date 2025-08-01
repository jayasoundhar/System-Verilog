class car;
  
  int price;
  string name;
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
    this.name = {name,".",version};
    $display("function_name = %s name = %s",name,this.name);

    this.version = version;
    $display("function_version = %s version = %s",version,this.version);
    this.price = this.price*2;
    
  endfunction
  
  function void display();
    $display("name => %s price => %0d",name,price);
  endfunction
  
  function car deep();
    deep = new();
    deep.price = this.price;
    deep.name = this.name;
    deep.version = this.version;
  endfunction
endclass

module tb;
  initial begin
    car c1,c2;
    $display("...............................deep copy.......................................");
    c1 = new();
    c1.display();

    c2 = c1.deep();
    
    c2.display();
    $display("...............................updating c2.......................................");
    c2.update("v2","mohan");
    c1.display();
    c2.display();
    
    $display("...............................updating c1.......................................");
    c1.update("v3","H");
    c1.display();
    c2.display();
  end
endmodule


// ...............................deep copy.......................................
// name = H.V1
// name => H.V1 price => 100
// name = H.V1
// name => H.V1 price => 100
// ...............................updating c2.......................................
// function_name = mohan name = mohan.v2
// function_version = v2 version = v2
// name => H.V1 price => 100
// name => mohan.v2 price => 200
// ...............................updating c1.......................................
// function_name = H name = H.v3
// function_version = v3 version = v3
// name => H.v3 price => 200
// name => mohan.v2 price => 200
