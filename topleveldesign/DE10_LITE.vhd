------------------------------------------------------------------------------------
--Project : DIC 4AHEL 
--Author  : Menzel
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
		LEDR			  : out std_logic_vector(9 downto 0);
		---------------------------------------------------------------
		GPIO		  :	inout std_logic_vector (34 downto 0);
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
	clk_inp <= max10_clk1_50;
	servo1_pos_vector <= SW (7 downto 0);
	GPIO(31 downto 8) <= servo_out(23 downto 0);
	mosi <= GPIO(4);
	GPIO(2) <= miso;
	ss <= GPIO(6);
	sclk <= GPIO(0);
	LEDR(7 downto 0) <= spi_in(191 downto 184);
  
	spi_receive: entity work.spi_slave(rtl)
	port map (
		MOSI => mosi,
		MISO => miso,
		sclk => sclk,
		ss => ss,
		reset_n => sw(0),
		servo_out => spi_in
	);

	my_clk_div: entity work.clock_divider(behaviour) 
	port map (
		clk_in  => clk_inp,
    	clk_servo => clk_out_sig
    );
	
	SERVOGEN: for I in 23 downto 0 generate
	ELEMENT: entity work.s_tester(behaviour)
	port map (
		CLK => clk_out_sig,
		RESET_n => '0',
		S_OUT => servo_out(I),
		IN_D(0) => spi_in(8*I + 7),
		IN_D(1) => spi_in(8*I + 6),
		IN_D(2) => spi_in(8*I + 5),
		IN_D(3) => spi_in(8*I + 4),
		IN_D(4) => spi_in(8*I + 3),
		IN_D(5) => spi_in(8*I + 2),
		IN_D(6) => spi_in(8*I + 1),
		IN_D(7) => spi_in(8*I + 0)
	);
   	end generate SERVOGEN;
end rtl;
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
