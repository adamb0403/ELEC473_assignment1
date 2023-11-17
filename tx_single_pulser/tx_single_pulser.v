module tx_single_pulser (input clk,
                         input reset,
                         input pulser_in,
                         output pulser_out);

    parameter wait_h = 1'b1;
    parameter wait_l = 1'b0;

    always @(posedge clk) begin
        if (!reset) begin
            pulser_out <= 1'b0;
        end
        else begin

        end
    end
endmodule