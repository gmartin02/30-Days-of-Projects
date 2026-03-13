module tb ();

    logic a, b, sum, cout;

    half_adder dut(
        .a(a),
        .b(b),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars;
        a = 0;
        b = 0;

        #5;

        a = 0;
        b = 1;

        #5;

        a = 1;
        b = 0;

        #5;

        a = 1;
        b = 1;

        #5;
        $finish;
    end

    initial begin
        $display("Time\ta\tb\tsum\tcout");
        $monitor("%0t\t%b\t%b\t%b\t%b", $time, a, b, sum, cout);
    end

endmodule