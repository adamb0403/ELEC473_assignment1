library verilog;
use verilog.vl_types.all;
entity tx_baud_counter_vlg_check_tst is
    port(
        baud_output     : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end tx_baud_counter_vlg_check_tst;
