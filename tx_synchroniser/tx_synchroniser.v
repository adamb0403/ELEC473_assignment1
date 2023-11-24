module tx_synchroniser (input clk,
                        input key_in,
                        output key_out);
    
    // Declare registers for two flip flops back to back
    reg ff1;
    reg ff2;
    assign key_out = ff2; // Assign the block output as the 2nd flip flop output

    initial begin
        // As key input is active low, we want to preserve this on output: Set ff's as default 1
        ff1 = 1'b1;
        ff2 = 1'b1;
    end

    always @(posedge clk) begin
        // Cascading the flip flops on each positive clock edge
        ff1 <= key_in;
        ff2 <= ff1;
    end

endmodule