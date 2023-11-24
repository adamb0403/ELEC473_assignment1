module tx_shift_register (input clk,
                          input reset,
                          input tx_sr_load,
                          input tx_sr_shift,
                          input [10:0] tx_sr_in,
                          output tx_sr_out);
    
    reg [10:0] tmp_data; // 11 bit register for data
	assign tx_sr_out = tmp_data[0]; // Assign the shift register output to the lsb of the data register
	
	initial
		tmp_data = 11'b1111111111; // Initially set the register to all 1s
	
    always @(posedge clk) begin
        if (!reset)
            tmp_data <= 11'b1111111111; // Upon reset set the register to all 1s

        else if (tx_sr_load)
            tmp_data <= tx_sr_in; // If a load signal is detected, load the shift register data input to the internal 11bit register
        
        else if (tx_sr_shift) begin
            // If a shift signal is detected: rotate the internal register to the right + set the msb to 1
            tmp_data <= tmp_data >> 1;
            tmp_data[10] <= 1'b1;
        end
    end
endmodule