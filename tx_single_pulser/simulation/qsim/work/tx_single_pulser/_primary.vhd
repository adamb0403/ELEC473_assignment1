library verilog;
use verilog.vl_types.all;
entity tx_single_pulser is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        pulser_in       : in     vl_logic;
        pulser_out      : out    vl_logic
    );
end tx_single_pulser;
