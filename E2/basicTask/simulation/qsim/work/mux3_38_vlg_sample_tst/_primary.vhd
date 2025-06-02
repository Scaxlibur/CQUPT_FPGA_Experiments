library verilog;
use verilog.vl_types.all;
entity mux3_38_vlg_sample_tst is
    port(
        \clkclk__1hz_38\: in     vl_logic;
        \clkclk__1khz_38\: in     vl_logic;
        \clkclk__500hz_38\: in     vl_logic;
        set38           : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end mux3_38_vlg_sample_tst;
