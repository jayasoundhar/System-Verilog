module tb;
  int array[9] = '{4, 7, 2, 5, 7, 1, 6, 3, 1};

  initial begin
    array.sort();
    $display ("reverse:%p", array);
  end
endmodule

// sort:'{1, 1, 2, 3, 4, 5, 6, 7, 7}

