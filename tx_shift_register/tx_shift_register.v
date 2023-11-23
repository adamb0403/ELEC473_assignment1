module tx_shift_register (input clk,
                          input reset,
                          input tx_sr_load,
                          input tx_sr_shift,
                          input [10:0] tx_sr_in,
                          output tx_sr_out);
    
    reg [10:0] tmp_data;
	assign tx_sr_out = tmp_data[0];
	
	initial
		tmp_data = 11'b1111111111;
	
    always @(posedge clk) begin
        if (!reset)
            tmp_data <= 11'b1111111111;

        else if (tx_sr_load)
            tmp_data <= tx_sr_in;
        
        else if (tx_sr_shift) begin
            tmp_data <= tmp_data >> 1;
            tmp_data[10] <= 1'b1;
        end
    end
endmodule