module tx_parity (input [6:0] parity_in,
                  output reg [10:0] parity_out);

    always @(parity_in) begin // Execute always at a 7bit data input
        parity_out[0] = 1'b1; // Place a 0 as the first bit
        parity_out[1] = 1'b0; // Place the start bit
        parity_out[8:2] = parity_in; // Place the data bits
        parity_out[10] = 1'b1; // Place the stop bit

        if (~^parity_in) // Odd parity check: When the inverse of XOR is true
            parity_out[9] = 1'b1; // Set parity to 1
        else
            parity_out[9] = 1'b0; // Otherwise set parity to 0
    end
endmodule