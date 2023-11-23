library verilog;
use verilog.vl_types.all;
entity tx_7segdecoder is
    port(
        seven_seg_input : in     vl_logic_vector(3 downto 0);
        seven_seg_output: out    vl_logic_vector(6 downto 0)
    );
end tx_7segdecoder;
