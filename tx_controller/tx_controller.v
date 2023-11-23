module tx_controller (input clk,
                      input reset,
                      input ctrl_pulser,
                      input ctrl_baud,
                      input ctrl_counter,
                      output ctrl_sr_load,
                      output reg [1:0] current_state,
                      output ctrl_sr_shift);

    parameter state_0 = 2'b00;
    parameter state_load = 2'b01;
    parameter state_shift = 2'b10;

    assign ctrl_sr_load = (current_state == state_load);
    assign ctrl_sr_shift = ((current_state == state_shift) & (ctrl_baud));

    // reg [1:0] current_state = state_0;

    initial
        current_state = state_0;

    always @(posedge clk) begin
        if (!reset)
            current_state <= state_0;

        case (current_state)
            state_0:
                if (ctrl_pulser)
                    current_state <= state_load;
            state_load:
                current_state <= state_shift;
            state_shift:
                if (ctrl_counter)
                    current_state <= state_0;
        endcase
    end
endmodule