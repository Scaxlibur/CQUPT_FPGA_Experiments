library verilog;
use verilog.vl_types.all;
entity fre_div38_vlg_sample_tst is
    port(
        clk_50MHz_38    : in     vl_logic;
        set38           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end fre_div38_vlg_sample_tst;
