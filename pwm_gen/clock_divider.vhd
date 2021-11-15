
-----------------------------
--Project: hexabot
-----------------------------
--File: clock_divider
--Author: Luka Menzel 
--Date: 29.01.2021
-----------------------------  

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.ALL;

entity clock_divider is
port(
	CLK_in : in std_logic;
	CLK_servo : out std_ulogic
	);
end clock_divider;

architecture behaviour of clock_divider is
	signal counter : integer := 0;
	signal CLK_servo_buff : std_logic := '0';
begin
	
	CLK_servo <= CLK_servo_buff;
	counting : process(CLK_in)
	begin
		if(CLK_in'event and clk_in = '1')then
		counter <= counter + 1;
		if(counter = 24)then
			CLK_servo_buff <= not CLK_servo_buff;
      			counter <= 0;
		end if;
		end if;
	end process;
end behaviour;


