----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.04.2021 15:38:43
-- Design Name: 
-- Module Name: lab6 - Behavioral
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

entity SevenSegment is
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
end SevenSegment;

architecture Behavioral of SevenSegment is

begin
A<=(n3 and n1) or (n3 and n2) or (n2 and (not n1) and (not n0) ) or (n0 and (not n3) and (not n2) and (not n1));
B<=(n3 and n1) or (n3 and n2) or (n2 and (not n1) and  n0 ) or (n2 and n1 and (not n0));
C<=(n3 and n1) or (n3 and n2) or (n1 and (not n3) and (not n2) and (not n0));
D<=(n3 and n1) or (n3 and n2) or (n0 and (not n3) and (not n2) and (not n1)) or (n2 and n1 and n0) or (n2 and (not n1) and (not n0));
E<=(n3 and n1) or (n3 and n2) or (n0 and (not n1)) or (n1 and n0) or (n2 and (not n1));
F<=(n3 and n1) or (n3 and n2) or (n1 and n0) or ((not n3) and (not n2) and n0) or ((not n3) and (not n2) and n1);
G<=(n3 and n1) or (n3 and n2) or ((not n3) and (not n2) and (not n1)) or (n2 and n1 and n0);
end Behavioral;
