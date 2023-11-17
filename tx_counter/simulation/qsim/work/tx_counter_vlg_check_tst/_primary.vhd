library verilog;
use verilog.vl_types.all;
entity tx_counter_vlg_check_tst is
    port(
        count_out       : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end tx_counter_vlg_check_tst;
