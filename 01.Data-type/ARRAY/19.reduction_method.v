module tb;
  int array[4] = {1, 2, 3, 4};
  int res[$];

  initial begin
    $display ("sum     = %d", array.sum());
    $display ("product = %d", array.product());
    $display ("and     = %b", array.and());
    $display ("or      = %b", array.or());
    $display ("xor     = %b", array.xor());
  end
endmodule


// sum     =          10
// product =          24
// and     = 00000000000000000000000000000000
// or      = 00000000000000000000000000000111
// xor     = 00000000000000000000000000000100
