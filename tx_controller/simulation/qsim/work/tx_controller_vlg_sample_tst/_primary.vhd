library verilog;
use verilog.vl_types.all;
entity tx_controller_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        ctrl_baud       : in     vl_logic;
        ctrl_counter    : in     vl_logic;
        ctrl_pulser     : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end tx_controller_vlg_sample_tst;
