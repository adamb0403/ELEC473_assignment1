library verilog;
use verilog.vl_types.all;
entity tx_parity_vlg_check_tst is
    port(
        parity_out      : in     vl_logic_vector(10 downto 0);
        sampler_rx      : in     vl_logic
    );
end tx_parity_vlg_check_tst;
