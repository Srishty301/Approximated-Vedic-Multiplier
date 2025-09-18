module test_vedic_8_compare;
    reg [7:0] a;
    reg [7:0] b;
    wire [15:0] c_accurate;
    wire [15:0] c_approx;
    real error_rate;
    real max_error_rate;
    reg [7:0] max_error_a, max_error_b;
    real total_error;
    integer test_count;

    // Instantiate the accurate multiplier
    vedic_8X8 uut_accurate (.a(a), .b(b), .c(c_accurate));

    // Instantiate the approximate multiplier
    approx_vedic_8X8 uut_approx (.a(a), .b(b), .c(c_approx));

    initial begin
        $display("Time\ta\tb\tAcc\tApprox\tError Rate");
        max_error_rate = 0;
        total_error = 0;
        test_count = 0;

        // Test cases
          run_test(8'd255, 8'd255); // Max possible value
    run_test(8'd255, 8'd128); // High vs. Mid range
    run_test(8'd240, 8'd15);  // Extreme mismatch
    run_test(8'd170, 8'd85);  // Alternating bit patterns
    run_test(8'd200, 8'd199); // Close high values
    run_test(8'd127, 8'd128); // Edge case crossing mid-point
    run_test(8'd50, 8'd205);  // High difference pattern
    run_test(8'd99, 8'd198);  // Random spread
    run_test(8'd1, 8'd255);   // Min vs. Max
    run_test(8'd222, 8'd111); // Large variance pattern
    run_test(8'd89, 8'd178);  // Opposite bit shifts
    run_test(8'd135, 8'd120); // Random mid-range
    run_test(8'd76, 8'd190);  // Mixed bit distribution
    run_test(8'd250, 8'd10);  // Near max vs. small number
    run_test(8'd195, 8'd60);  // Large vs. mid-small range


        $display("\nMaximum Error Rate: %f%%", max_error_rate);
        $display("Inputs for Maximum Error Rate: a = %d, b = %d", max_error_a, max_error_b);
        $display("Average Error Rate: %f%%", total_error / test_count);

        $finish;
    end

    task run_test;
        input [7:0] input_a, input_b;
        begin
            a = input_a;
            b = input_b;
            #10 calculate_error();
            $display("%0t\t%d\t%d\t%d\t%d\t%f%%", $time, a, b, c_accurate, c_approx, error_rate);
            
            if (error_rate > max_error_rate) begin
                max_error_rate = error_rate;
                max_error_a = a;
                max_error_b = b;
            end
            
            total_error = total_error + error_rate;
            test_count = test_count + 1;
        end
    endtask

    task calculate_error;
        begin
            error_rate = (c_accurate > c_approx) ? 
                         ((c_accurate - c_approx) * 100.0 / 65536.0) : 
                         ((c_approx - c_accurate) * 100.0 / 65536.0);
        end
    endtask
endmodule