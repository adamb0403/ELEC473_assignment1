library verilog;
use verilog.vl_types.all;
entity tx_7segdecoder_vlg_check_tst is
    port(
        seven_seg_output: in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end tx_7segdecoder_vlg_check_tst;
