------------------------------------------------------------------------------------
--Project : DIC 4AHEL 
--Author  : Gr�bner
--Date    : 15/09/2020
--File    : DE10_Lite.vhd
--Design  : Terasic DE10 Board
------------------------------------------------------------------------------------
-- Description: Button Up/Down Counter, HEX
------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;

use work.DE10_Lite_const_pkg.ALL;

--=======================================================================================================
entity DE10_Lite is
  port (
        MAX10_CLK1_50 :  in std_logic;
        ---------------------------------------------------------------
        ---------------------------------------------------------------
		  GPIO			 :	 inout std_logic_vector (35 downto 0);
		  ---------------------------------------------------------------
		  SW            :  in std_logic_vector(9 downto 0)
       );
end DE10_Lite;
--=======================================================================================================

architecture rtl of DE10_Lite is

signal clk_inp : std_logic;
signal clk_out_sig : std_logic;
signal servo_out : std_logic_vector(35 downto 0);
signal servo1_pos : unsigned(7 downto 0);
signal servo1_pos_vector : std_logic_vector(7 downto 0);
signal servo_trtl: std_logic_vector(1 downto 0);

  signal counter_nat       : unsigned(7 downto 0);


begin

    rot_enc: entity work.rotary_encoder(rtl)
    port map(
    I=> GPIO(12)&GPIO(13),
	 O=> servo_trtl(1 downto 0),
	 RESET_n => '0',
	 CLK => clk_inp

    );

    my_clk_div: entity work.clock_divider(behaviour) 
	port map (
		clk_in  => clk_inp,
      clk_servo => clk_out_sig
    );
	
	servo1: entity work.s_tester(behaviour)
	port map (
		CLK => clk_out_sig,
		RESET_n => '0',
		S_OUT => servo_out(20),
		IN_D => servo1_pos
	);
	
	servo2: entity work.s_tester(behaviour)
	port map (
		CLK => clk_out_sig,
		RESET_n => '0',
		S_OUT => servo_out(1),
		IN_D => servo1_pos
	);
	
	servo3: entity work.s_tester(behaviour)
	port map (
		CLK => clk_out_sig,
		RESET_n => '0',
		S_OUT => servo_out(2),
		IN_D => servo1_pos
	);
	
	
	servo4: entity work.s_tester(behaviour)
	port map (
		CLK => clk_out_sig,
		RESET_n => '0',
		S_OUT => servo_out(3),
		IN_D => servo1_pos
	);
	
	servo5: entity work.s_tester(behaviour)
	port map (
		CLK => clk_out_sig,
		RESET_n => '0',
		S_OUT => servo_out(4),
		IN_D => servo1_pos
	);
	
	servo6: entity work.s_tester(behaviour)
	port map (
		CLK => clk_out_sig,
		RESET_n => '0',
		S_OUT => servo_out(5),
		IN_D => servo1_pos
	);
	
	servo7: entity work.s_tester(behaviour)
	port map (
		CLK => clk_out_sig,
		RESET_n => '0',
		S_OUT => servo_out(6),
		IN_D => servo1_pos
	);
	
	servo8: entity work.s_tester(behaviour)
	port map (
		CLK => clk_out_sig,
		RESET_n => '0',
		S_OUT => servo_out(7),
		IN_D => servo1_pos
	);
	
	counter: process(max10_clk1_50)
	begin
	if(max10_clk1_50'event and max10_clk1_50 = '1') then
		if(servo_trtl = "01") then
			counter_nat <= counter_nat + 1;
		end if;
		if(servo_trtl = "10") then
			counter_nat <= counter_nat - 1;
		end if;
	end if;
	end process counter;
	
	
  clk_inp <= max10_clk1_50;
  servo1_pos <= unsigned(counter_nat);
 -- servo1_pos_vector <= SW (7 downto 0);
  GPIO <= servo_out;
end rtl;
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
