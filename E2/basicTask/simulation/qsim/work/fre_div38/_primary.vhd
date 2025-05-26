library verilog;
use verilog.vl_types.all;
entity fre_div38 is
    port(
        clk_500Hz_38    : out    vl_logic;
        clk_50MHz_38    : in     vl_logic;
        clk_1kHz_38     : out    vl_logic;
        clk_1Hz_38      : out    vl_logic
    );
end fre_div38;
