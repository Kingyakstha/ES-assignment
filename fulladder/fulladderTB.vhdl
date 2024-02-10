library IEEE;
use IEEE.std_logic_1164.all;

entity FA_test is
end FA_test;

architecture test_bench of FA_test is
    component fulladd is
        Port (a, b, cin : in STD_LOGIC;
              s, c : out STD_LOGIC);
    end component fulladd;

    signal a, b, cin, s, c : STD_LOGIC;

begin
    uut : fulladd port map (a => a, b => b, cin => cin, s => s, c => c);

    stim : process
    begin
        -- Test case 1
        a <= '0';
        b <= '0';
        cin <= '0';
        wait for 10 ns;

        -- Test case 2
        a <= '0';
        b <= '0';
        cin <= '1';
        wait for 10 ns;

        -- Test case 3
        a <= '0';
        b <= '1';
        cin <= '0';
        wait for 10 ns;

        -- Test case 4
        a <= '0';
        b <= '1';
        cin <= '1';
        wait for 10 ns;

        -- End simulation
        wait;
    end process stim;

end test_bench;