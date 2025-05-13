library verilog;
use verilog.vl_types.all;
entity cnt10 is
    port(
        q               : out    vl_logic_vector(3 downto 0);
        clk             : in     vl_logic
    );
end cnt10;
