library ieee;
use ieee.std_logic_1164.all;

entity lcm_tb  is 
	end lcm_tb;

architecture behavior of lcm_tb is 
signal clk, rst: std_logic;
signal a, b, LCM: integer;
component fsm_LCM 
	port(clk, rst : IN STD_LOGIC;
	    a, b: IN INTEGER;
	    LCM : OUT INTEGER);
END COMPONENT;
BEGIN
lcm1 : fsm_LCM port map(clk=> clk, rst=>  rst, a=>a, b=>b, LCM=>LCM);
clock: process
begin
	clk<= '1';
	wait for 100 ns;

	clk <= '0';
	WAIT FOR 100 NS;
	
end process;
process
begin
	rst <= '1';
	wait for 10 ns;
	rst <= '0';

	a <= 24;
	b <= 12;
	wait for 2000 ns;

	a <= 16;
	b <= 5;
	wait for 2000 ns;

	a <= 11;
	b <= 33;
	wait for 2000 ns;

	WAIT;
end process;
end behavior;