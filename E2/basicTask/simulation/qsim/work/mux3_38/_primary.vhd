library verilog;
use verilog.vl_types.all;
entity mux3_38 is
    port(
        bell38          : out    vl_logic;
        set38           : in     vl_logic_vector(1 downto 0);
        \clkclk__1khz_38\: in     vl_logic;
        \clkclk__500hz_38\: in     vl_logic;
        \clkclk__1hz_38\: in     vl_logic
    );
end mux3_38;
