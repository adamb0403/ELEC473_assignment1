module tx_counter (input clk,
                   input reset,
                   input count_enable,
                   output count_out);

    // 4 bit register to count upto 11
    reg [3:0] count;

    // Output 1 when the count has reached 10
	assign count_out = (count == 4'd10);

    always @(posedge clk) begin
        if (!reset)
            count <= 0; // Reset the count upon reset
        else if (count == 4'd10)
            count <= 0; // Reset the count if the target has been reached
        else if (count_enable)
            count <= count + 1; // Otherwise increment the counter on every clk cycle
    end
endmodule