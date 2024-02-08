library ieee;
use ieee.std_logic_1164.all;

entity decoder is 
    port(
        a1, a0, e: in std_logic;
        y3, y2, y1, y0: out std_logic
    );
end decoder;

architecture decoder_arch of decoder is 
begin
    y3 <= e and a1 and a0;
    y2 <= e and a1 and (not a0);
    y1 <= e and (not a1) and a0;
    y0 <= e and (not a1) and (not a0);
end decoder_arch;
