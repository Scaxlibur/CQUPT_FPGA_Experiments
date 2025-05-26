library verilog;
use verilog.vl_types.all;
entity fre_div38_vlg_check_tst is
    port(
        clk_1Hz_38      : in     vl_logic;
        clk_1kHz_38     : in     vl_logic;
        clk_500Hz_38    : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end fre_div38_vlg_check_tst;
