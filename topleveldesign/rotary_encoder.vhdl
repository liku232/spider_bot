------------------------------------------------------------------------------------
--Project : DIC 3BHEL 
--Author  : B. Wess
--Date    : 15/05/2018
--File    : bin2bcd.vhd
--Design  : Terasic DE10 Board
------------------------------------------------------------------------------------
-- Description: Double Dabble FSM Implementation
------------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

--====================================================================================
entity rotary_encoder is
  port (
        I :  in std_logic_vector (1 downto 0);
	O :  out std_logic_vector (1 downto 0);
	RESET_n : in std_logic;
	CLK : in std_logic
       );
end rotary_encoder;
--====================================================================================

--====================================================================================
architecture rtl of rotary_encoder is
  signal state  : integer;

begin
  --==================================================================================
  rotary_encoder: process(CLK, RESET_n)
  begin
    ----------------------------------------------------------------------------------
    if (RESET_n = '0') then
        O <= "00";
    state <= 1; 
    elsif (CLK'event and CLK = '1') then
      case state is
        ------------------------------------------------------------------------------
        when 1 =>
	  O <= "00";
          if I = "00" then
          	state  <= 2;
	  end if;
	  if I = "01" then
          	state  <= 3;
	  end if;
	  if I = "10" then
          	state  <= 4;
	  end if;
        ------------------------------------------------------------------------------
        when 2 =>
	  O <= "00";
          if I = "00" then
          	state  <= 1;
	  end if;

	  if I = "10" then
          	state  <= 3;
	  end if;

	  if I = "01" then
          	state  <= 4;
	  end if;

        ------------------------------------------------------------------------------
        when 3 =>
	  O <= "01";
	  state <= 5;
        ------------------------------------------------------------------------------
        when 4 =>
	  O <= "10";
          state <= 5;
        ------------------------------------------------------------------------------
	when 5 =>
	  O <= "00";
          if I = "00" then
          	state  <= 1;
	  end if;

	  if I = "11" then
          	state  <= 2;
	  end if;

        ------------------------------------------------------------------------------
        when others => null;
      end case;
    end if;
    ----------------------------------------------------------------------------------
  end process rotary_encoder;
  --==================================================================================
end rtl;


