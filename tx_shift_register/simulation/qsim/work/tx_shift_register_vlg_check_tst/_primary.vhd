library verilog;
use verilog.vl_types.all;
entity tx_shift_register_vlg_check_tst is
    port(
        tx_sr_out       : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end tx_shift_register_vlg_check_tst;
