module tb;
  int array[9] = '{4, 7, 2, 5, 7, 1, 6, 3, 1};

  initial begin
    array.reverse();
    $display ("reverse:%p", array);
  end
endmodule

// reverse:'{1, 3, 6, 1, 7, 5, 2, 7, 4}.......................

