----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.04.2021 16:25:15
-- Design Name: 
-- Module Name: lab6_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity lab6_tb is
--  Port ( );
end lab6_tb;

architecture test_gate of lab6_tb is
component SevenSegment is
 port (
 n0 : in std_logic;
 n1 : in std_logic;
 n2 : in std_logic;
 n3 : in std_logic;
 A  : out std_logic;
 B  : out std_logic;
 C  : out std_logic;
 D  : out std_logic;
 E  : out std_logic;
 F  : out std_logic;
 G  : out std_logic
 );
end component;
signal n0_t : std_logic := '0';
signal n1_t : std_logic := '0'; 
signal n2_t : std_logic := '0'; 
signal n3_t : std_logic := '0'; 
signal A_t : std_logic;
signal B_t : std_logic;
signal C_t : std_logic;
signal D_t : std_logic;
signal E_t : std_logic;
signal F_t : std_logic;
signal G_t : std_logic;
begin
UUT: SevenSegment port map (
 n0 => n0_t,
 n1 => n1_t,
 n2 => n2_t,
 n3 => n3_t,
 A => A_t,
 B => B_t,
 C => C_t,
 D => D_t,
 E => E_t,
 F => F_t,
 G => G_t
 ); 
 process begin
 n3_t <= '0';
 n2_t <= '0';
 n1_t <= '0';
 n0_t <= '0';
 wait for 1 ns; 
 n3_t <= '0';
 n2_t <= '0';
 n1_t <= '0';
 n0_t <= '1';
 wait for 1 ns;
 n3_t <= '0';
 n2_t <= '0';
 n1_t <= '1';
 n0_t <= '0';
 wait for 1ns; 
 n3_t <= '0';
 n2_t <= '0';
 n1_t <= '1';
 n0_t <= '1';
 wait for 1ns; 
 n3_t <= '0';
 n2_t <= '1';
 n1_t <= '0';
 n0_t <= '0';
 wait for 1ns; 
 n3_t <= '0';
 n2_t <= '1';
 n1_t <= '0';
 n0_t <= '1';
 wait for 1ns; 
 n3_t <= '0';
 n2_t <= '1';
 n1_t <= '1';
 n0_t <= '0';
 wait for 1ns; 
n3_t <= '0';
n2_t <= '1';
n1_t <= '1';
n0_t <= '1';
wait for 1ns;
n3_t <= '1';
n2_t <= '0';
n1_t <= '0';
n0_t <= '0';
wait for 1ns;
n3_t <= '1';
n2_t <= '0';
n1_t <= '0';
n0_t <= '1';
wait for 1ns;
n3_t <= '1';
n2_t <= '0';
n1_t <= '1';
n0_t <= '0';
wait for 1ns;
n3_t <= '1';
n2_t <= '0';
n1_t <= '1';
n0_t <= '1';
wait for 1ns;
n3_t <= '1';
n2_t <= '1';
n1_t <= '0';
n0_t <= '0';
wait for 1ns;
n3_t <= '1';
n2_t <= '1';
n1_t <= '0';
n0_t <= '1';
wait for 1ns;
n3_t <= '1';
n2_t <= '1';
n1_t <= '1';
n0_t <= '0';
wait for 1ns;
n3_t <= '1';
n2_t <= '1';
n1_t <= '1';
n0_t <= '1';
wait;
end process;
end test_gate;
