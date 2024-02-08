library ieee;
use ieee.std_logic_1164.all;

entity mux is
port(
    a0,a1,s0:in std_logic;
    y:out std_logic
);
end mux;

architecture mux_arch of mux is
begin
    y <= ((not s0) and a0) or (s0 and a1);
end mux_arch;