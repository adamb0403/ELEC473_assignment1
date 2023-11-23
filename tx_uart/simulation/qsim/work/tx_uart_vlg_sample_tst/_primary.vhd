library verilog;
use verilog.vl_types.all;
entity tx_uart_vlg_sample_tst is
    port(
        CLOCK_50        : in     vl_logic;
        KEY             : in     vl_logic_vector(3 downto 0);
        SW              : in     vl_logic_vector(8 downto 2);
        sampler_tx      : out    vl_logic
    );
end tx_uart_vlg_sample_tst;
