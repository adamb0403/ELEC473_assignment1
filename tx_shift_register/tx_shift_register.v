module tx_shift_register (input clk,
                          input reset,
                          input tx_sr_load,
                          input tx_sr_shift,
                          input [9:0] tx_sr_in,
                          output reg tx_sr_out);
    
    reg [9:0] tmp_data;

    always @(posedge clk) begin
        tx_sr_out <= tmp_data[9];

        if (!reset)
            tmp_data <= 0;

        else if (tx_sr_load)
            tmp_data <= tx_sr_in;
        
        else if (tx_sr_shift)
            tmp_data <= tmp_data << 1;
    end
endmodule