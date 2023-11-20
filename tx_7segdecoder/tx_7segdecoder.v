module tx_7segdecoder (input [6:0] seven_seg_input,
                       output reg [6:0] seven_seg_1,
                       output reg [6:0] seven_seg_2);

    reg [3:0] b_digit_1;
    reg [3:0] b_digit_2;

    function automatic [6:0] decoder;
        input [3:0] binary;
        begin
            case (binary)
                4'b0000: decoder = 7'b0000000;
                4'b0001: decoder = 7'b1001111;
                4'b0010: decoder = 7'b0010010;
                4'b0011: decoder = 7'b0000110;
                4'b0100: decoder = 7'b1001100;
                4'b0101: decoder = 7'b0100100;
                4'b0110: decoder = 7'b0100000;
                4'b0111: decoder = 7'b0001111;
                4'b1000: decoder = 7'b0000000;
                4'b1001: decoder = 7'b0000100;
                4'b1010: decoder = 7'b0001000;
                4'b1011: decoder = 7'b1100000;
                4'b1100: decoder = 7'b0110001;
                4'b1101: decoder = 7'b1000010;
                4'b1110: decoder = 7'b0110000;
                4'b1111: decoder = 7'b0111000;
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