library verilog;
use verilog.vl_types.all;
entity tx_controller is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        ctrl_pulser     : in     vl_logic;
        ctrl_baud       : in     vl_logic;
        ctrl_counter    : in     vl_logic;
        ctrl_sr_load    : out    vl_logic;
        current_state   : out    vl_logic_vector(1 downto 0);
        ctrl_sr_shift   : out    vl_logic
    );
end tx_controller;
