module testbench ();
  
  logic a, b, sel, y;
  
  mux2to1 dut1 (.a(a), .b(b), .sel(sel), .y(y));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    a = 0;
    b = 0;
    sel = 0;
    
    #5;
    
    a = 0;
    b = 0;
    sel = 1;
    
    #5;
    
    a = 0;
    b = 1;
    sel = 0;
    
    #5;
    
    a = 0;
    b = 1;
    sel = 1;
    
    #5;
    
    a = 1;
    b = 0;
    sel = 0;
    
    #5;
    
    a = 1;
    b = 0;
    sel = 1;
    
    #5;
    
    a = 1;
    b = 1;
    sel = 0;
    
    #5;
    
    a = 1;
    b = 1;
    sel = 1;
    
    #5;
  end
  initial begin
    $display("Time\ta\tb\tsel\ty");
    $monitor("%0t\t%b\t%b\t%b\t%b", $time, a, b, sel, y);
  end
endmodule