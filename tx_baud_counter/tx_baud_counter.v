module tx_baud_counter (input clk,
                        input reset,
                        output baud_output);

    reg [10:0] count;
	 
	assign baud_output = (count == 11'd1301);

    always @(posedge clk) begin
        //baud_output = 0;
        if (!reset) begin
            count <= 0;
        end
        else begin
            if (count == 1301) begin
                count <= 0;
                //baud_output <= 1;
            end
            else begin
                count <= count + 11'b1;
            end
        end
    end
endmodule