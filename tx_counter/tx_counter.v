module tx_counter (input clk,
                   input reset,
                   input count_enable,
                   output count_out);

    reg [3:0] count;

	assign count_out = (count == 4'd10);
	 
    always @(posedge clk) begin
        //count_out <= 0;
        if (!reset) begin
            count <= 0;
        end
        else if (count == 4'd10)
            count <= 0;

        else if (count_enable) begin
            // if (count == 4'd10) begin
            //     count <= 0;
            //     //count_out <= 1;
            // end
            // else begin
                count <= count + 1;
            // end
        end
    end
endmodule