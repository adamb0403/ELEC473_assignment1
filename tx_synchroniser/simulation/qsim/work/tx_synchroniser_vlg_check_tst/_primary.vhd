library verilog;
use verilog.vl_types.all;
entity tx_synchroniser_vlg_check_tst is
    port(
        key_out         : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end tx_synchroniser_vlg_check_tst;
