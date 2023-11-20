library verilog;
use verilog.vl_types.all;
entity tx_uart_vlg_sample_tst is
    port(
        button          : in     vl_logic;
        clk             : in     vl_logic;
        data            : in     vl_logic_vector(6 downto 0);
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end tx_uart_vlg_sample_tst;
