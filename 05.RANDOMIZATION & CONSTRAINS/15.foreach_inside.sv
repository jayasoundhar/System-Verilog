class example;
  rand bit [3:0]a[];
  
  constraint c2 {a.size==4;}
  constraint  c1 {foreach (a[i])
    a[i] inside {3,4};}
  
endclass

module sample;
 
  initial begin
  example e1;    
    e1=new();

      e1.randomize();
    foreach(e1.a[i])
      $display("A[%0d]=%0d",i,e1.a[i]);
   
  end
endmodule


//output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  8 03:55 2025
A[0]=3
A[1]=3
A[2]=4
A[3]=4
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.360 seconds;       Data structure size:   0.0Mb
Wed Oct  8 03:55:56 2025
Done
