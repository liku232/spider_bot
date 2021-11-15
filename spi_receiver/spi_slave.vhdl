---------------------------------------------------------------------------------
-- Project: Spiderbot
---------------------------------------------------------------------------------
-- File: spi_slave.vhdl
-- Author: Menzel
-- Date: 13.11.21
--------------------------------------------------------------------------------
--
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity spi_slave is
port(
  MOSI    : in std_logic;
  MISO    : out std_logic;
  sclk    : in std_logic;
  ss      : in std_logic;
  reset_n : in std_logic;
  servo11 : out std_logic_vector(7 downto 0);
  servo12 : out std_logic_vector(7 downto 0);
  servo13 : out std_logic_vector(7 downto 0);
  servo14 : out std_logic_vector(7 downto 0);
  servo21 : out std_logic_vector(7 downto 0);
  servo22 : out std_logic_vector(7 downto 0);
  servo23 : out std_logic_vector(7 downto 0);
  servo24 : out std_logic_vector(7 downto 0);
  servo31 : out std_logic_vector(7 downto 0);
  servo32 : out std_logic_vector(7 downto 0);
  servo33 : out std_logic_vector(7 downto 0);
  servo34 : out std_logic_vector(7 downto 0);
  servo41 : out std_logic_vector(7 downto 0);
  servo42 : out std_logic_vector(7 downto 0);
  servo43 : out std_logic_vector(7 downto 0);
  servo44 : out std_logic_vector(7 downto 0);
  servo51 : out std_logic_vector(7 downto 0);
  servo52 : out std_logic_vector(7 downto 0);
  servo53 : out std_logic_vector(7 downto 0);
  servo54 : out std_logic_vector(7 downto 0);
  servo61 : out std_logic_vector(7 downto 0);
  servo62 : out std_logic_vector(7 downto 0);
  servo63 : out std_logic_vector(7 downto 0);
  servo64 : out std_logic_vector(7 downto 0)


);
end spi_slave;

--------------------------------------------------------------------------------

architecture rtl of spi_slave is

  signal sreg : std_logic_vector(191 downto 0);
  signal CLK  : std_logic;
  signal servo_out : std_logic_vector(191 downto 0); 

begin

process(reset_n, CLK)
variable n : integer range 0 to 191 := 0;

begin
  if(reset_n = '0') then
    miso <= '0';
    servo_out <= (others => '0');
  elsif(CLK = '1' and CLK'event and ss = '0' and reset_n = '1') then
    if(not(n = 191)) then
      sreg(n) <= mosi;
      n := n+1;
    else
      sreg(191) <= mosi;
      servo_out <= sreg;
      n := 0;
    end if;
  end if;
end process;

CLK <= sclk;
servo11 <= servo_out(7 downto 0);
servo12 <= servo_out(15 downto 8);
servo13 <= servo_out(23 downto 16);
servo14 <= servo_out(31 downto 24);
servo21 <= servo_out(39 downto 32);
servo22 <= servo_out(47 downto 40);
servo23 <= servo_out(55 downto 48);
servo24 <= servo_out(63 downto 56);
servo31 <= servo_out(71 downto 64);
servo32 <= servo_out(79 downto 72);
servo33 <= servo_out(87 downto 80);
servo34 <= servo_out(95 downto 88);
servo41 <= servo_out(103 downto 96);
servo42 <= servo_out(111 downto 104);
servo43 <= servo_out(119 downto 112);
servo44 <= servo_out(127 downto 120);
servo51 <= servo_out(135 downto 128);
servo52 <= servo_out(143 downto 136);
servo53 <= servo_out(151 downto 144);
servo54 <= servo_out(159 downto 152);
servo61 <= servo_out(167 downto 160);
servo62 <= servo_out(175 downto 168);
servo63 <= servo_out(183 downto 176);
servo64 <= servo_out(191 downto 184);

end rtl;
