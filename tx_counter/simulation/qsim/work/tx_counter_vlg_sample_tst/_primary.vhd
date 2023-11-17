library verilog;
use verilog.vl_types.all;
entity tx_counter_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        count_enable    : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end tx_counter_vlg_sample_tst;
