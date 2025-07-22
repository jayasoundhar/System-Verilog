module tb;
  int q[$]={1,2,3,4};
  initial begin
    $display("size => %0d",q.size());
    $display("queue data => %p",q);
    q.insert(2,80);
    $display("queue data => %p",q);
    q.push_front(10);
    $display("push_front => %p",q);
    q.push_back(80);
    $display("push_back => %p",q);
    
    $display("pop_front => %p",q.pop_front());
    
    $display("pop_back => %p",q.pop_back());
    q.delete(3);
    $display("deleting 5th pos => %p",q);
    q.delete();
    $display("deleting all elements => %p",q );
  end
endmodule

// size => 4
// queue data => '{1, 2, 3, 4}
// queue data => '{1, 2, 80, 3, 4}
// push_front => '{10, 1, 2, 80, 3, 4}
// push_back => '{10, 1, 2, 80, 3, 4, 80}
// pop_front => 10
// pop_back => 80
// deleting 5th pos => '{1, 2, 80, 4}
// deleting all elements => '{}
