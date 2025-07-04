module tb;
  int array[9] = '{4, 7, 2, 5, 7, 1, 6, 3, 1};

  initial begin
    array.rsort();
    $display ("reverse:%p", array);
  end
endmodule

// rsort:'{7, 7, 6, 5, 4, 3, 2, 1, 1}

