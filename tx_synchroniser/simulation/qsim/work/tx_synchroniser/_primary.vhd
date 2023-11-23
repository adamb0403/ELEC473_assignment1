library verilog;
use verilog.vl_types.all;
entity tx_synchroniser is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        key_in          : in     vl_logic;
        key_out         : out    vl_logic
    );
end tx_synchroniser;
