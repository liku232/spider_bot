---------------------------------------------------------------------------------
-- Project: Spiderbot
---------------------------------------------------------------------------------
-- File: ltb_spi_slave.vhdl
-- Author: Menzel
-- Date: 14.11.21
--------------------------------------------------------------------------------
--
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity ltb_spi_slave is
end ltb_spi_slave;

architecture rtl of ltb_spi_slave is

    signal sdata   : std_logic_vector(191 downto 0) := "101010100101000000110101111011001100100010111000000100100000010000011011111001010000011110011111010011101100100111110010110001000110010000001111110100111100000000010011100011100101010011110111";
    signal n       : integer := 0;
    signal MOSI    : std_logic := '0';
    signal MISO    : std_logic := '0';
    signal sclk    : std_logic := '0';
    signal ss      : std_logic := '1';
    signal reset_n : std_logic := '0';
    signal servo11 : std_logic_vector(7 downto 0);
    signal servo12 : std_logic_vector(7 downto 0);
    signal servo13 : std_logic_vector(7 downto 0);
    signal servo14 : std_logic_vector(7 downto 0);
    signal servo21 : std_logic_vector(7 downto 0);
    signal servo22 : std_logic_vector(7 downto 0);
    signal servo23 : std_logic_vector(7 downto 0);
    signal servo24 : std_logic_vector(7 downto 0);
    signal servo31 : std_logic_vector(7 downto 0);
    signal servo32 : std_logic_vector(7 downto 0);
    signal servo33 : std_logic_vector(7 downto 0);
    signal servo34 : std_logic_vector(7 downto 0);
    signal servo41 : std_logic_vector(7 downto 0);
    signal servo42 : std_logic_vector(7 downto 0);
    signal servo43 : std_logic_vector(7 downto 0);
    signal servo44 : std_logic_vector(7 downto 0);
    signal servo51 : std_logic_vector(7 downto 0);
    signal servo52 : std_logic_vector(7 downto 0);
    signal servo53 : std_logic_vector(7 downto 0);
    signal servo54 : std_logic_vector(7 downto 0);
    signal servo61 : std_logic_vector(7 downto 0);
    signal servo62 : std_logic_vector(7 downto 0);
    signal servo63 : std_logic_vector(7 downto 0);
    signal servo64 : std_logic_vector(7 downto 0);

begin -- architecture body

    UUT: entity work.spi_slave(rtl) 
    port map(
        MOSI    => MOSI,
        MISO    => MISO, 
        sclk    => sclk , 
        ss      => ss,
        reset_n => reset_n,
        servo11 => servo11,
        servo12 => servo12,
        servo13 => servo13,
        servo14 => servo14,
        servo21 => servo21,
        servo22 => servo22,
        servo23 => servo23,
        servo24 => servo24,
        servo31 => servo31,
        servo32 => servo32,
        servo33 => servo33,
        servo34 => servo34,
        servo41 => servo41,
        servo42 => servo42,
        servo43 => servo43,
        servo44 => servo44,
        servo51 => servo51,
        servo52 => servo52,
        servo53 => servo53,
        servo54 => servo54,
        servo61 => servo61,
        servo62 => servo62,
        servo63 => servo63,
        servo64 => servo64
    );

    process -- clk gen
    begin
        sclk <= not(sclk);
        wait for 1 ns;
    end process;

    process -- reset
    begin
        reset_n <= '1';
        wait;
    end process;

    process -- select slave
    begin
        wait for 3 ns;
        ss <= '0';
        wait;
    end process;

    process -- datastream
    begin
        wait for 3 ns;
        n <= 0;
        while (n < 192) loop
            mosi <= sdata(n);
            n <= n + 1;
            wait for 2 ns;
        end loop;
    end process;
end rtl;
