class example;
  rand bit [3:0]a;
  rand bit [3:0]b;
  rand bit [3:0]c;
  rand bit [3:0]d;
  
  constraint c1 {a inside {[1:10]};};
  constraint c2 {!(b inside {15,14});};
  constraint c3 {c inside {1,3,[4:6]};};
  constraint c4 {d inside {[a:b]};};
  
  
endclass

module sample;
 
  initial begin
  example e1;

    
    e1=new();

    repeat(4) begin
      e1.randomize();
      $display("A=%0d-----B=%0d----C=%0d--------D=%0d",e1.a,e1.b,e1.c,e1.d);
end
   
  end
endmodule

//output
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
A=3-----B=8----C=1--------D=5
A=8-----B=12----C=3--------D=10
A=4-----B=12----C=6--------D=9
A=10-----B=13----C=5--------D=12
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
TOOL:	xrun	23.09-s001: Exiting on Oct 08, 2025 at 02:27:07 EDT  (total: 00:00:01)
Done
