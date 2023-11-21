library verilog;
use verilog.vl_types.all;
entity tx_shift_register is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        tx_sr_load      : in     vl_logic;
        tx_sr_shift     : in     vl_logic;
        tx_sr_in        : in     vl_logic_vector(10 downto 0);
        tx_sr_out       : out    vl_logic
    );
end tx_shift_register;
