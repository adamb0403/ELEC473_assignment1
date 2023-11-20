module tx_baud_counter (input clk,
                        input reset,
                        output reg baud_output);

    reg [10:0] count;

    always @(posedge clk) begin
        baud_output = 0;
        if (!reset) begin
            count <= 0;
        end
        else begin
            if (count == 0) begin
                count <= 0;
                baud_output <= 1;
            end
            else begin
                count <= count + 1;
            end
        end
    end
endmodule