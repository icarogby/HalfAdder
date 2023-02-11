library ieee;
use ieee.std_logic_1164.all;

entity half_adder is
	port(
		a_in, b_in:     in std_logic;
		sum, carry_out: out std_logic
	);

end half_adder;

architecture behavior of half_adder is

begin
	sum <= a_in xor b_in;
	carry_out <= a_in and b_in;

end behavior;
