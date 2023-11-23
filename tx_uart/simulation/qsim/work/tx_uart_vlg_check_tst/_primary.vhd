library verilog;
use verilog.vl_types.all;
entity tx_uart_vlg_check_tst is
    port(
        count_enabe     : in     vl_logic;
        ctrl_counter    : in     vl_logic;
        ctrl_state      : in     vl_logic_vector(1 downto 0);
        HEX4            : in     vl_logic_vector(6 downto 0);
        HEX5            : in     vl_logic_vector(6 downto 0);
        UART_TXD        : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end tx_uart_vlg_check_tst;
