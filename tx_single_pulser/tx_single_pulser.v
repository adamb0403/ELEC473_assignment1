module tx_single_pulser (input clk,
                         input reset,
                         input pulser_in,
                         output pulser_out);

    reg current_state;
    parameter wait_h = 1'b0;
    parameter wait_l = 1'b1;

    assign pulser_out = ((current_state == wait_h) & !pulser_in);

    initial begin
        current_state <= wait_h;
        // pulser_out = 1'b0;
    end

    always @(posedge clk) begin
        if (!reset) begin
            current_state <= wait_h;
            // pulser_out <= 1'b0;
        end
        else begin
            // pulser_out <= 1'b0;
            case (current_state)
                wait_h: begin
                    if (!pulser_in) begin
                        // pulser_out <= 1'b1;
                        current_state <= wait_l;
                    end
                end
                wait_l: begin
                    if (pulser_in)
                        current_state <= wait_h;
                end
            endcase
        end
    end
endmodule