module tx_controller (input clk,
                      input reset,
                      input ctrl_pulser,
                      input ctrl_baud,
                      input ctrl_counter,
                      output ctrl_sr_load,
                      output reg [1:0] current_state,
                      output ctrl_sr_shift);

    // Define each state using a 2 bit binary number
    parameter state_0 = 2'b00;
    parameter state_load = 2'b01;
    parameter state_shift = 2'b10;

    // Assign the conditions in which the controller will tell the shift register to load or shift
    assign ctrl_sr_load = (current_state == state_load);
    assign ctrl_sr_shift = ((current_state == state_shift) & (ctrl_baud));

    // reg [1:0] current_state = state_0;

    initial
        current_state = state_0; // Set the first state to state_0

    always @(posedge clk) begin
        if (!reset)
            current_state <= state_0; // Upon reset assign state_0 as the first state

        case (current_state)
            state_0:
            // While in state_0 move to state_load upon a pulser output
                if (ctrl_pulser)
                    current_state <= state_load;
            state_load:
            // While in state_load move to state_shift after sending the load signal
                current_state <= state_shift;
            state_shift:
            // While in state_shift move to state_0 upon a counter output (when all bits are sent)
                if (ctrl_counter)
                    current_state <= state_0;
        endcase
    end
endmodule