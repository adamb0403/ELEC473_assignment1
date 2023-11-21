module tx_parity (input [6:0] parity_in,
                  output reg [10:0] parity_out);

    always @(parity_in) begin
        parity_out[0] = 1'b1;
        parity_out[1] = 1'b0;
        parity_out[8:2] = parity_in;
        parity_out[10] = 1'b1;

        if (~^parity_in)
            parity_out[9] = 1'b1;
        else
            parity_out[9] = 1'b0;
    end
endmodule