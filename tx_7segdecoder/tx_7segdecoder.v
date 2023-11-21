module tx_7segdecoder (input [6:0] seven_seg_input,
                       output reg [6:0] seven_seg_1,
                       output reg [6:0] seven_seg_2);

    reg [3:0] b_digit_1;
    reg [3:0] b_digit_2;

    function automatic [6:0] decoder;
        input [3:0] binary;
        begin
            case (binary)
                4'b0000: decoder = 7'b1000000; // 0
                4'b0001: decoder = 7'b1111001; // 1
                4'b0010: decoder = 7'b0100100; // 2
                4'b0011: decoder = 7'b0110000; // 3
                4'b0100: decoder = 7'b0011001; // 4
                4'b0101: decoder = 7'b0010010; // 5
                4'b0110: decoder = 7'b0000010; // 6
                4'b0111: decoder = 7'b1111000; // 7
                4'b1000: decoder = 7'b0000000; // 8
                4'b1001: decoder = 7'b0010000; // 9
                4'b1010: decoder = 7'b0001000; // A
                4'b1011: decoder = 7'b0000011; // B
                4'b1100: decoder = 7'b1000110; // C
                4'b1101: decoder = 7'b0100001; // D
                4'b1110: decoder = 7'b0000110; // E
                4'b1111: decoder = 7'b0001110; // F
            endcase
        end
    endfunction

    always @(seven_seg_input) begin
        b_digit_1 = seven_seg_input[6:4];
        b_digit_2 = seven_seg_input[3:0];

        seven_seg_1 = decoder(b_digit_1);
        seven_seg_2 = decoder(b_digit_2);
    end
endmodule