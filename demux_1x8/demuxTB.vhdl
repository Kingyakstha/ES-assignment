library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity demux_tb is
end demux_tb;

architecture demux_arch of demux_tb is
    signal a, s2, s1, s0, y7, y6, y5, y4, y3, y2, y1, y0: std_logic;

    component demux
        port(
            a, s2, s1, s0: in std_logic;
            y7, y6, y5, y4, y3, y2, y1, y0: out std_logic
        );
    end component demux;

begin
    uut: demux
    port map(a => a, s2 => s2, s1 => s1, s0 => s0, y7 => y7, y6 => y6, y5 => y5, y4 => y4, y3 => y3, y2 => y2, y1 => y1, y0 => y0);

    stimulus_process: process
    begin
        --TEST CASE 1
        a <= '1';
        s2 <= '1';
        s1 <= '0';
        s0 <= '1';
        wait for 100 ns;

        --TEST CASE 2
        a <= '1';
        s2 <= '1';
        s1 <= '1';
        s0 <= '1';
        wait for 100 ns;

        --TEST CASE 3
        a <= '1';
        s2 <= '0';
        s1 <= '0';
        s0 <= '0';
        wait for 100 ns;

        --TEST CASE 4
        a <= '1';
        s2 <= '0';
        s1 <= '0';
        s0 <= '1';
        wait for 100 ns;

        --TEST CASE 5
        a <= '1';
        s2 <= '1';
        s1 <= '0';
        s0 <= '0';
        wait for 100 ns;

        --TEST CASE 6
        a <= '1';
        s2 <= '1';
        s1 <= '0';
        s0 <= '1';
        wait for 100 ns;

        wait;
    end process stimulus_process;
end demux_arch;
