library verilog;
use verilog.vl_types.all;
entity tx_uart_vlg_sample_tst is
    port(
        CLOCK_50        : in     vl_logic;
        KEY0            : in     vl_logic;
        KEY3            : in     vl_logic;
        SW              : in     vl_logic_vector(8 downto 2);
        sampler_tx      : out    vl_logic
    );
end tx_uart_vlg_sample_tst;
