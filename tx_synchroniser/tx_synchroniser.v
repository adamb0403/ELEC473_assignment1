module tx_synchroniser (input clk,
                        input key_in,
                        output key_out);
    
    reg ff1;
    reg ff2;
    assign key_out = ff2;

    initial begin
        ff1 = 1'b1;
        ff2 = 1'b1;
    end

    always @(posedge clk) begin
        ff1 <= key_in;
        ff2 <= ff1;
    end

endmodule