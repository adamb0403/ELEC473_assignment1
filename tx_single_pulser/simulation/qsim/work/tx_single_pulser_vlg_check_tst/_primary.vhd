library verilog;
use verilog.vl_types.all;
entity tx_single_pulser_vlg_check_tst is
    port(
        pulser_out      : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end tx_single_pulser_vlg_check_tst;
