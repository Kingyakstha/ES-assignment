library ieee;
use ieee.std_logic_1164.all;

entity demux is
port(
    a, s2, s1, s0: in std_logic;
    y7, y6, y5, y4, y3, y2, y1, y0: out std_logic
);
end demux;

architecture demux_arch of demux is
begin
    y7 <= s0 and s1 and s2 and a;
    y6 <= (not s0) and s1 and s2 and a;
    y5 <= s0 and (not s1) and s2 and a;
    y4 <= (not s0) and (not s1) and s2 and a;
    y3 <= s0 and s1 and (not s1) and a;
    y2 <= (not s0) and s1 and (not s2) and a;
    y1 <= s0 and (not s1) and (not s2) and a;
    y0 <= (not s0) and (not s1) and (not s2) and a;
end demux_arch;