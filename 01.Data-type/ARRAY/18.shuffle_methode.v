module tb;
  int array[9] = '{4, 7, 2, 5, 7, 1, 6, 3, 1};

  initial begin
    array.shuffle();
    $display ("reverse:%p", array);
  end
endmodule

// shuffle:'{1, 4, 6, 7, 1, 7, 5, 3, 2}
