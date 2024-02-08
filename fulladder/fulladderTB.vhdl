library	IEEE;
use	IEEE.std_logic_1164.all;

entity	FA_test	is
end	FA_test;

architecture	test_bench	of	FA_test	is
component	full_adder	is
Port	
(
    a,b,cin	:	in	STD_LOGIC;
	s,c	:	out	STD_LOGIC);
end	component	full_adder;

signal	a,b,cin,s,c:	STD_LOGIC;

begin

uut	:	full_adder	port	map(
a=>a,	b=>b,
cin=>cin,s=>s,c=>c);

stim:	process
begin
a<='0';
b<='0';
cin<='0';
wait	for	10	ns;

a<='0';
b<='0';
cin<='1';
wait	for	10	ns;

a<='0';
b<='1';
cin<='0';
wait	for	10	ns;

a<='0';
b<='1';
cin<='1';
wait	for	10	ns;
	wait;

end	process;
end	test_bench;