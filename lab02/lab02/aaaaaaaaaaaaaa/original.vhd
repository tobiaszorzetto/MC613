library ieee;
use ieee.std_logic_1164.all;

entity original is
port(
	A, B, C, D, E: IN std_logic;
	F: OUT std_logic
);
end original;

architecture arc_original of original is
begin
	F <= 		((not A) and (not B) and (not C) and (not D) and (not E))
			OR ((not A) and (not B) and (not C) and (D) and (not E))
			OR ((not A) and (not B) and (C) and (not D) and (E))
			OR ((not A) and (B) and (not C) and (not D) and (not E))
			OR ((not A) and (B) and (C) and (not D) and (E))
			OR ((not A) and B and C and D and E)
			OR ((A) and (not B) and (not C) and (D) and (not E))
			OR ((A) and (not B) and (C) and (not D) and (E))
			OR (A and B and (not C) and (not D) and (not E))
			OR (A and B and C and (not D) and E)
			OR (A and B and C and D and E);
end arc_original;