module tx_baud_counter (input clk,
                        input reset,
                        output baud_output);

    reg [10:0] count; // 11 bit register to count upto the baud rate
	
    // Output 1 when the baud target has been reached
	assign baud_output = (count == 11'd1301); // 1301 clk cycles at 20ns = 38400 bps baud rate

    always @(posedge clk) begin
        if (!reset) begin
            count <= 0; // Reset the count upon reset
        end
        else begin
            if (count == 1301) begin
                count <= 0; // Reset the count if the baud target has been reacher
            end
            else begin
                count <= count + 11'b1; // Increment the counter on every clk cycle
            end
        end
    end
endmodule