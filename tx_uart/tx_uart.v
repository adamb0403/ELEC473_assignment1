module tx_uart (input CLOCK_50,
                input [3:0] KEY,
                input [8:2] SW,
                output UART_TXD,
                output [1:0] ctrl_state,
                output [6:0] HEX5,
                output [6:0] HEX4);

    wire synchroniser_pulser;
    wire pulser_ctrl;
    wire baud_ctrl;
    wire counter_ctrl;
    wire ctrl_shift_counter;
    wire ctrl_load;
    wire [10:0] parity_sr;

    tx_7segdecoder msb (
        .seven_seg_input(SW[8:6]),
        .seven_seg_output(HEX5[6:0])
        );

    tx_7segdecoder lsb (
        .seven_seg_input(SW[5:2]),
        .seven_seg_output(HEX4[6:0])
        );

    tx_baud_counter baud (
        .clk(CLOCK_50),
        .reset(KEY[0]),
        .baud_output(baud_ctrl)
        );

    tx_counter counter (
        .clk(CLOCK_50),
        .reset(KEY[0]),
        .count_enable(ctrl_shift_counter),
        .count_out(counter_ctrl)
    );

    tx_synchroniser synchroniser (
        .clk(CLOCK_50),
        .key_in(KEY[3]),
        .key_out(synchroniser_pulser)
    );

    tx_single_pulser pulser (
        .clk(CLOCK_50),
        .reset(KEY[0]),
        .pulser_in(synchroniser_pulser),
        .pulser_out(pulser_ctrl)
    );

    tx_parity parity (
        .parity_in(SW[8:2]),
        .parity_out(parity_sr[10:0])
    );

    tx_shift_register sr (
        .clk(CLOCK_50),
        .reset(KEY[0]),
        .tx_sr_load(ctrl_load),
        .tx_sr_shift(ctrl_shift_counter),
        .tx_sr_in(parity_sr[10:0]),
        .tx_sr_out(UART_TXD)
    );

    tx_controller ctrl (
        .clk(CLOCK_50),
        .reset(KEY[0]),
        .ctrl_pulser(pulser_ctrl),
        .ctrl_baud(baud_ctrl),
        .ctrl_counter(counter_ctrl),
        .ctrl_sr_load(ctrl_load),
        .ctrl_sr_shift(ctrl_shift_counter),
        .current_state(ctrl_state[1:0])
    );
	 
endmodule