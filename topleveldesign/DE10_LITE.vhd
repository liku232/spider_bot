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
      MAX10_CLK1_50 : in std_logic;
      ---------------------------------------------------------------
		GPIO		  :	in std_logic_vector (23 downto 0);
		---------------------------------------------------------------
		SW            : in std_logic_vector(9 downto 0)
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
signal spi_in: std_logic_vector(191 downto 0);
signal counter_nat       : unsigned(7 downto 0);
signal reset_n : std_logic;
signal mosi    : std_logic;
signal miso    : std_logic;
signal sclk    : std_logic := '1';
signal ss      : std_logic := '0';

begin

	spi_receive: entity work.spi_slave(rtl)
	port map (
		MOSI => mosi,
		MISO => miso,
		sckl => sclk,
		ss => ss,
		reset_n => reset_n,
		servo_out => spi_in
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
		IN_D => spi_in(191 downto 184)
	);
	
	servo2: entity work.s_tester(behaviour)
	port map (
		CLK => clk_out_sig,
		RESET_n => '0',
		S_OUT => servo_out(1),
		IN_D => spi_in(183 downto 176)
	);
	
	servo3: entity work.s_tester(behaviour)
	port map (
		CLK => clk_out_sig,
		RESET_n => '0',
		S_OUT => servo_out(2),
		IN_D => spi_in(175 downto 168)
	);
	
	
	servo4: entity work.s_tester(behaviour)
	port map (
		CLK => clk_out_sig,
		RESET_n => '0',
		S_OUT => servo_out(3),
		IN_D => spi_in(167 downto 160)
	);
	
	servo5: entity work.s_tester(behaviour)
	port map (
		CLK => clk_out_sig,
		RESET_n => '0',
		S_OUT => servo_out(4),
		IN_D => spi_in(159 downto 152)
	);
	
	servo6: entity work.s_tester(behaviour)
	port map (
		CLK => clk_out_sig,
		RESET_n => '0',
		S_OUT => servo_out(5),
		IN_D => spi_in(151 downto 144)
	);
	
	servo7: entity work.s_tester(behaviour)
	port map (
		CLK => clk_out_sig,
		RESET_n => '0',
		S_OUT => servo_out(6),
		IN_D => spi_in(143 downto 136)
	);
	
	servo8: entity work.s_tester(behaviour)
	port map (
		CLK => clk_out_sig,
		RESET_n => '0',
		S_OUT => servo_out(7),
		IN_D => spi_in(135 downto 128)
	);
	
	
  clk_inp <= max10_clk1_50;
  servo1_pos <= unsigned(counter_nat);
  servo1_pos_vector <= SW (7 downto 0);
  GPIO(23 downto 0) <= servo_out(23 downto 0);
  GPIO(24) <= mosi;
  miso <= GPIO(25);
  GPIO(26) <= ss;
  GPIO(27) <= sclk;

end rtl;
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
