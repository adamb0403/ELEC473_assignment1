library verilog;
use verilog.vl_types.all;
entity tx_uart is
    port(
        CLOCK_50        : in     vl_logic;
        KEY             : in     vl_logic_vector(3 downto 0);
        SW              : in     vl_logic_vector(8 downto 2);
        UART_TXD        : out    vl_logic;
        ctrl_state      : out    vl_logic_vector(1 downto 0);
        HEX5            : out    vl_logic_vector(6 downto 0);
        HEX4            : out    vl_logic_vector(6 downto 0)
    );
end tx_uart;
