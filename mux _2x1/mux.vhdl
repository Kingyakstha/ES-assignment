library ieee;
use ieee.std_logic_1164.all;

entity and_gate is
    port(
        a,b:in std_logic;
        z:out std_logic
    );
end and_gate;

architecture and_gate_arch of and_gate is
begin
    z <= a and b;
end and_gate_arch;

library ieee;
use ieee.std_logic_1164.all;


entity or_gate is
    port(
        a,b:in std_logic;
        z:out std_logic
    );
end or_gate;

architecture or_gate_arch of or_gate is
begin
    z <= a or b;
end or_gate_arch;

library ieee;
use ieee.std_logic_1164.all;


entity not_gate is
    port(
        a:in std_logic;
        z:out std_logic
    );
end not_gate;

architecture not_gate_arch of not_gate is
begin
    z <= not a;
end not_gate_arch;
library ieee;
use ieee.std_logic_1164.all;



entity mux is
    port(
        a,b,s0:in std_logic;
        z:out std_logic
    );
end mux;

architecture mux_arch of mux is
    component	and_gate	IS
    PORT(
        a,b:IN	STD_LOGIC;
        z:OUT	STD_LOGIC
    );
    END component and_gate;

    component	or_gate	IS
PORT(
	a,b:IN	STD_LOGIC;
	z:OUT	STD_LOGIC
);
END component or_gate;

component	not_gate	IS
PORT(
	a:IN	STD_LOGIC;
	z:OUT	STD_LOGIC
);
END component not_gate;

SIGNAL	a1,n1,a2:STD_LOGIC;

begin 
    and1: and_gate port map (a=>a,b=>s0,z=>a1);
    not1: not_gate port map (a=>s0,z=>n1);
    and2: and_gate port map (a=>n1,b=>b,z=>a2);
    or1: or_gate port map (a=>a1,b=>a2,z=>z);
end mux_arch;