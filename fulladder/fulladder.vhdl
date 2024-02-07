--	vhdl code for or gate
LIBRARY	IEEE;
USE	IEEE.STD_LOGIC_1164.ALL;

ENTITY	or_gate	IS
PORT(
	a,b:IN	STD_LOGIC;
	z:OUT	STD_LOGIC
);
END	or_gate;

ARCHITECTURE	or_arch	OF	or_gate	IS
BEGIN
	z<=a	or	b;
END	or_arch;

-- vhdl code for half adder
LIBRARY	IEEE;
USE	IEEE.STD_LOGIC_1164.ALL;

ENTITY	half_adder	IS
PORT(
	a,b:IN	STD_LOGIC;
	sum,carry_out:OUT	STD_LOGIC
);
END	half_adder;

ARCHITECTURE	half_arch	OF	half_adder	IS
BEGIN
    
sum         <=a	xor	b;
carry_out   <=a	and	b;
        
END	half_arch;

--vhdl code for full adder using two half adder and a or gate

LIBRARY	IEEE;
USE	IEEE.STD_LOGIC_1164.ALL;

ENTITY	fulladd	IS
PORT(
	a,b,cin:IN	STD_LOGIC;
	s,c:OUT	STD_LOGIC
);
END	fulladd;

ARCHITECTURE	full_arch	OF	fulladd	IS
COMPONENT	or_gate	IS
PORT(
	a,b:IN	STD_LOGIC;
	z:OUT	STD_LOGIC			
);
END	COMPONENT	or_gate;

COMPONENT	half_adder	IS
PORT(
	a,b:IN	STD_LOGIC;
	sum,carry_out:OUT	STD_LOGIC
);
END	COMPONENT	half_adder;

SIGNAL	S1,C1,C2:STD_LOGIC;
BEGIN
	HA1:half_adder	PORT	MAP(a=>a,b=>b,sum=>S1,carry_out=>C1);
	HA2:half_adder	PORT	MAP(a=>S1,b=>Cin,sum=>s,carry_out=>C2);
	OR1:or_gate	PORT	MAP(a=>C1,b=>C2,z=>c);
END	full_arch;