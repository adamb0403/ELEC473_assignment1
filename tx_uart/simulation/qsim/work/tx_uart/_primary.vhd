library verilog;
use verilog.vl_types.all;
entity tx_uart is
    port(
        UART_TXD        : out    vl_logic;
        CLOCK_50        : in     vl_logic;
        KEY0            : in     vl_logic;
        KEY3            : in     vl_logic;
        SW              : in     vl_logic_vector(8 downto 2);
        ctrl_counter    : out    vl_logic;
        count_enabe     : out    vl_logic;
        ctrl_state      : out    vl_logic_vector(1 downto 0);
        HEX4            : out    vl_logic_vector(6 downto 0);
        HEX5            : out    vl_logic_vector(6 downto 0)
    );
end tx_uart;
