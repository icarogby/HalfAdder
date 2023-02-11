library ieee;
use ieee.std_logic_1164.all;

entity testbench is
end testbench;

architecture behavior of testbench is
	signal a_in, b_in, sum, carry_out: std_logic;
	
	component half_adder is
		port(
			a_in, b_in:     in std_logic;
			sum, carry_out: out std_logic
		);

	end component;
	
begin
	ha:  half_adder
		port map(
			a_in => a_in,
			b_in => b_in,
			sum => sum,
			carry_out => carry_out
		);
		
	process begin
		a_in <= 'X';
		b_in <= 'X';
		wait for 1 ns;
		
		a_in <= '0';
		b_in <= '0';
		wait for 1 ns;
		
		a_in <= '0';
		b_in <= '1';
		wait for 1 ns;
		
		a_in <= '1';
		b_in <= '0';
		wait for 1 ns;
		
		a_in <= '1';
		b_in <= '1';
		wait for 1 ns;
		
		assert false report "End of test.";
		wait;

	end process;
	
end behavior;