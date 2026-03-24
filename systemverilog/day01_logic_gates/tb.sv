module testbench ();
  
  logic a;
  logic b;
  logic y, c, d;
  
  and2 dut1 (.a(a), .b(b), .y(y));
  xor2 dut2 (.a(a), .b(b), .y(c));
  or2 dut3 (.a(a), .b(b), .y(d));

  initial begin
    $dumpfile ("dump.vcd");
    $dumpvars(0, testbench);
    
    a = 0;
    b = 0;

    #10;

    a = 0;
    b = 1;

    #10;

    a = 1;
    b = 0;

    #10;

    a = 1;
    b = 1;
    
    #10;
    $finish;
  end

  initial begin
    
    $display("Time\ta\tb\ty\tc\td");
    $monitor("%0t\t%b\t%b\t%b\t%b\t%b", $time, a, b, y, c, d); // Monitor signals for changes
  end
endmodule