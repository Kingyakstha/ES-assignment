library ieee;
use ieee.std_logic_1164.all;

entity lcm_tb is 
	end lcm_tb;

architecture behavior of lcm_tb is 
    signal clk, reset: std_logic;
    signal a, b, lcm: integer;

    component fsm_lcm 
        port (
            clk, reset: in std_logic;
            a, b: in integer;
            lcm: out integer
        );
    end component fsm_lcm;

begin
    fsm_lcm1: fsm_lcm port map(clk => clk, reset => reset, a => a, b => b, lcm => lcm);

    clock: process
    begin
        clk <= '1';
        wait for 100 ns;

        clk <= '0';
        wait for 100 ns;
    end process;

    process
    begin
        reset <= '1';
        wait for 10 ns;
        reset <= '0';

        a <= 45;
        b <= 15;
        wait for 1600 ns;

        a <= 8;
        b <= 10;
        wait for 1600 ns;

        a <= 15;
        b <= 55;
        wait for 1600 ns;

        wait;
    end process;
end behavior;
