library ieee;
use ieee.std_logic_1164.all;

entity minimizado is
port(
	A, B, C, D, E: IN std_logic;
	F: OUT std_logic
);
end minimizado;

architecture arc_minimizado of minimizado is
begin
	F <= 		((not A) and (not B) and (not C) and (not E))
			OR ((not A) and (not C) and (not D) and (not E))
			OR ((not B) and (not C) and (D) and (not E))
			OR ((B) and (not C) and (not D) and (not E))
			OR ((C) and (not D) and (E))
			OR (B and C and E);
end arc_minimizado;