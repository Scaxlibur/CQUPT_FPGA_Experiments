library verilog;
use verilog.vl_types.all;
entity cnt10_38_vlg_check_tst is
    port(
        q38             : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end cnt10_38_vlg_check_tst;
