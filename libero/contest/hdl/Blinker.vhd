library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;

entity Blinker is
	port (
		clk : in STD_LOGIC;
		LED1_GREEN : out STD_LOGIC
);
end;

architecture Behavioral of Blinker is

	signal counter : natural range 0 to 100000000;
	signal blink : std_logic;

begin

	main: process (clk)
	begin
		if rising_edge(clk) then
			counter <= counter + 1;
			if counter = 6000000 then
				counter <= 0;
				blink <= not blink;
			end if;
			LED1_GREEN <= blink;
		end if;
	end process;

end Behavioral;
