library verilog;
use verilog.vl_types.all;
entity tx_7segdecoder_vlg_sample_tst is
    port(
        seven_seg_input : in     vl_logic_vector(6 downto 0);
        sampler_tx      : out    vl_logic
    );
end tx_7segdecoder_vlg_sample_tst;
