library verilog;
use verilog.vl_types.all;
entity tx_uart_vlg_check_tst is
    port(
        output_data     : in     vl_logic;
        ssd_1           : in     vl_logic_vector(6 downto 0);
        ssd_2           : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end tx_uart_vlg_check_tst;
