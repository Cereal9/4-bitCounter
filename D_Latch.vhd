LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;


Entity D_Latch is
port(
	D	: IN std_logic;
	G	: IN std_logic;
	clr: IN std_logic;
	Q	: OUT std_logic

);
End D_Latch;

Architecture behave of D_Latch is

signal OUTPUT : std_logic;

Begin 
OUTPUT <= NOT clr AND ((NOT G AND OUTPUT) OR (G AND D));
Q <= OUTPUT;

End architecture;
