library ieee;
use ieee.std_logic_1164.all;

entity decoder_tb is
end decoder_tb;

architecture decoder_arch of decoder_tb is
    signal a1, a0, e, y3, y2, y1, y0: std_logic;

    component decoder
        port (
            a1, a0, e: in std_logic;
            y3, y2, y1, y0: out std_logic
        );
    end component;

begin
    uut: decoder port map(a1 => a1, a0 => a0, e => e, y3 => y3, y2 => y2, y1 => y1, y0 => y0);

    -- Stimulus process
    stimulus_process: process
    begin
        -- Test case 1
        a0 <= '0';
        a1 <= '0';
        e <= '1';
        wait for 10 ns;

        -- Test case 2
        a0 <= '1';
        a1 <= '0';
        e <= '1';
        wait for 10 ns;

        -- Test case 3
        a0 <= '0';
        a1 <= '1';
        e <= '1';
        wait for 10 ns;

        -- Test case 4
        a0 <= '1';
        a1 <= '1';
        e <= '1';
        wait for 10 ns;

        -- End simulation
        wait;
    end process stimulus_process;

end decoder_arch;