module tx_counter (input clk,
                   input reset,
                   input count_enable,
                   output reg [3:0] count_out);


    always @(posedge clk) begin
        if (!reset) begin
            count_out <= 0;
        end
        else if (count_enable) begin
            if (count_out == 9) begin
                count_out <= 0;
            end
            else begin
                count_out <= count_out + 1;
            end
        end
    end
endmodule