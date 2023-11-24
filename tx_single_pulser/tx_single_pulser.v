module tx_single_pulser (input clk,
                         input reset,
                         input pulser_in,
                         output pulser_out);

    // Define each state using a 1bit binary number
    reg current_state;
    parameter wait_h = 1'b0;
    parameter wait_l = 1'b1;

    // Assign the conditions in which the block will output a pulse to the controller
    assign pulser_out = ((current_state == wait_h) & !pulser_in);

    initial
        current_state <= wait_h; // Set the intial state to wait high

    always @(posedge clk) begin
        if (!reset)
            current_state <= wait_h; // Upon reset set the state to wait high
        else begin
            case (current_state)
                wait_h: begin
                    // While is state wait high move to state wait low if a negative input is detected
                    if (!pulser_in)
                        current_state <= wait_l;
                end
                wait_l: begin
                    // While is state wait low move to state wait high if a positive input is detected
                    if (pulser_in)
                        current_state <= wait_h;
                end
            endcase
        end
    end

endmodule