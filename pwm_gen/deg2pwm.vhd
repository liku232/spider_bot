LIBRARY ieee;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_1164.ALL;

entity deg2pwm is
  	--clk_deg : time := 5.5 us;
	--pwm_period : time := 20 ms;
	--pwmmin : time := 1 ms);

	port(CLK     : in std_logic;
	     RESET_n : in std_logic;
	     S_OUT   : out std_logic; 
	     IN_D    : in unsigned(7 downto 0)
	     );
end deg2pwm;
--clk is 100kHz
--553-2520?sec pwm

architecture behaviour of deg2pwm is
	--signals etc;
	--min pwm 553us
	--Counter from (553)+(0-1987us) (ver2. 569-...)
	 constant o_set : unsigned (9 downto 0):= "1000111001";
	 signal cnt     : unsigned(11 downto 0):= (others => '0');
	 signal cnt20   : unsigned(16 downto 0):= (others => '0');
	 signal pwm_int : unsigned(15 downto 0):= (others => '0');
begin
	
counter : process (RESET_n,CLK)
begin
--------------------------------------------RESET
	if(RESET_n = '1')then 
	  S_OUT <= '0';
	  cnt <= (others => '0');
	  cnt20 <= (others => '0');
   	  pwm_int <=(others => '0');
--------------------------------------------COUNTER-PULSE
	elsif(CLK'event and CLK = '1')then  
	  pwm_int <= (IN_D * 11) + o_set;
	  if(cnt < pwm_int)then
	   cnt20 <= cnt20 + 1;
	   S_OUT <= '1';
	   cnt <= cnt + 1;
	  else
	   S_OUT<='0';
	  end if;
--------------------------------------------COUNTER-WIDTH
	  if(cnt20 < 20000)then
	   cnt20 <= cnt20 + 1;
	  else
	   cnt <= (others => '0');
	   cnt20 <= (others => '0');
	  end if;
	end if;
--------------------------------------------END
end process;
end behaviour;
