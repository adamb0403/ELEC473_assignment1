library verilog;
use verilog.vl_types.all;
entity tx_uart is
    port(
        output_data     : out    vl_logic;
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        button          : in     vl_logic;
        data            : in     vl_logic_vector(6 downto 0);
        ssd_1           : out    vl_logic_vector(6 downto 0);
        ssd_2           : out    vl_logic_vector(6 downto 0)
    );
end tx_uart;
