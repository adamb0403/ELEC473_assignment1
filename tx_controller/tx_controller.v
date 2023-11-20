module tx_controller (input clk,
                      input reset,
                      input ctrl_pulser,
                      input ctrl_baud,
                      input ctrl_counter,
                      output reg ctrl_sr_load,
                      output reg [1:0] current_state,
                      output reg ctrl_sr_shift);

    reg count = 1'b0;
    parameter state_0 = 2'b00;
    parameter state_load = 2'b01;
    parameter state_shift = 2'b10;

    // reg [1:0] current_state = state_0;

    initial begin
        current_state = state_0;
    end

    always @(posedge clk) begin
        if (!reset) begin
            count <= 0;
            current_state <= state_0;
        end

        case (current_state)
            state_0: begin
                ctrl_sr_load <= 0;
                ctrl_sr_shift <= 0;

                if (ctrl_pulser)
                    current_state <= state_load;
            end
            state_load: begin
                ctrl_sr_load <= 1;
                current_state <= state_shift;
            end
            state_shift: begin
                ctrl_sr_load <= 0;
                ctrl_sr_shift <= 0;

                if (ctrl_baud)
                    ctrl_sr_shift <= 1;

                if (ctrl_counter) begin
                    count <= 0;
                    current_state <= state_0;
                end
            end
        endcase
    end
endmodule