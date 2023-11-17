module tx_baud_counter (input clk,
                        input reset,
                        output reg [10:0] baud_output);


    always @(posedge clk) begin
        if (!reset) begin
            baud_output <= 0;
        end
        else begin
            if (baud_output == 1301) begin
                baud_output <= 0;
            end
            else begin
                baud_output <= baud_output + 1;
            end
        end
    end
endmodule