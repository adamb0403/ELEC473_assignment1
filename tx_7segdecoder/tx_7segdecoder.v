module tx_7segdecoder (input [3:0] seven_seg_input,
                       output reg [6:0] seven_seg_output);

    always @(seven_seg_input) begin
    // Convert a 4bit binary number to a 7 bit binary number
    // 7 bit binary number corresponds to 7 seg display as a hexadecimal number
        case (seven_seg_input)
            4'b0000: seven_seg_output = 7'b1000000; // 0
            4'b0001: seven_seg_output = 7'b1111001; // 1
            4'b0010: seven_seg_output = 7'b0100100; // 2
            4'b0011: seven_seg_output = 7'b0110000; // 3
            4'b0100: seven_seg_output = 7'b0011001; // 4
            4'b0101: seven_seg_output = 7'b0010010; // 5
            4'b0110: seven_seg_output = 7'b0000010; // 6
            4'b0111: seven_seg_output = 7'b1111000; // 7
            4'b1000: seven_seg_output = 7'b0000000; // 8
            4'b1001: seven_seg_output = 7'b0010000; // 9
            4'b1010: seven_seg_output = 7'b0001000; // A
            4'b1011: seven_seg_output = 7'b0000011; // B
            4'b1100: seven_seg_output = 7'b1000110; // C
            4'b1101: seven_seg_output = 7'b0100001; // D
            4'b1110: seven_seg_output = 7'b0000110; // E
            4'b1111: seven_seg_output = 7'b0001110; // F
        endcase
    end
endmodule