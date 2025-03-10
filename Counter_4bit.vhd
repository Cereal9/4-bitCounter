LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

Entity Counter_4bit is 
Port(
--if changing back to a 4 bit counter change Q and D to 3 down to 0 for 4 bit counter
	Q : OUT std_logic_vector(1 downto 0);
	D   : IN std_logic_vector(1 downto 0);
	clk : IN std_logic;
	clr : IN std_logic;
	ld  : IN std_logic;
	ct  : IN std_logic

);
End Counter_4bit; 

Architecture behave of Counter_4bit is 

Component D_FlipFlop IS
port(
	D   : IN std_logic;
	clk : IN std_logic;
	clr : IN std_logic;
	Q   : OUT std_logic
);
End Component;

Component MUX2to1_1bit is
Port(
	Y    : OUT std_logic;
	
	A 	  : IN std_logic;
	INP0 : IN std_logic;
	INP1 : IN std_logic

);
End Component;

Signal ld_signal : std_logic;
Signal A_signal  : std_logic;
Signal Mux0_signal : std_logic;

Signal B_signal : std_logic;
Signal Mux1_signal : std_logic;

Signal C_signal : std_logic;
Signal Mux2_signal : std_logic;

Signal D_signal : std_logic;
Signal Mux3_signal : std_logic;

Begin
	ld_signal <= NOT ld AND ct;
	
	Mux0 : MUX2to1_1bit Port Map(A => ld, INP0 => A_signal, Y => Mux0_signal, INP1 => D(0));
	FlipFlop0 : D_FlipFlop Port Map(clk => clk, clr => clr, D => Mux0_signal XOR ld_signal, Q => A_signal);
	
	MUX1 : MUX2to1_1bit Port Map(A => ld, INP0 => B_signal, Y => Mux1_signal, INP1 => D(1));
	FlipFlop1 : D_FlipFlop Port Map(clr => clr, clk => clk, D => (ld_signal AND A_signal) XOR Mux1_signal, Q => B_signal);
	

	Q(0) <= A_signal;
	Q(1) <= B_signal;
End Architecture;