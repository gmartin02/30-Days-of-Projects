module tb ();

    logic a, b, cin, cout, sum;
    full_adder dut (
        .a(a), 
        .b(b), 
        .cin(cin), 
        .sum(sum), 
        .cout(cout)
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars;
        a = 0;
        b = 0;
        cin = 0;

        #5;

        a = 1;
        b = 0;
        cin = 0;

        #5;
        
        a = 1;
        b = 0;
        cin = 1;

        #5;

        a = 1;
        b = 1;
        cin = 1;

        #5;
    end

    initial begin
        $display("Time\ta\tb\tcin\tsum\tcout");
        $monitor("%0t\t%b\t%b\t%b\t%b\t%b", $time, a, b, cin, cout, sum);
    end
        
endmodule