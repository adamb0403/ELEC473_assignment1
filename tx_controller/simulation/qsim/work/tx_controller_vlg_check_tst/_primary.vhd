library verilog;
use verilog.vl_types.all;
entity tx_controller_vlg_check_tst is
    port(
        ctrl_sr_load    : in     vl_logic;
        ctrl_sr_shift   : in     vl_logic;
        current_state   : in     vl_logic_vector(1 downto 0);
        sampler_rx      : in     vl_logic
    );
end tx_controller_vlg_check_tst;
