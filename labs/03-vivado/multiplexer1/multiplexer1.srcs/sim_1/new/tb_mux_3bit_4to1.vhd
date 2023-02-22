----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.02.2023 16:47:24
-- Design Name: 
-- Module Name: tb_mux_3bit_4to1 - Behavioral
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

entity tb_mux_3bit_4to1 is
 
end tb_mux_3bit_4to1;

architecture Behavioral of tb_mux_3bit_4to1 is
 port
    signal a_i : std_logic_vector(2 downto 0);
    signal b_i : std_logic_vector(2 downto 0);
    signal c_i : std_logic_vector(2 downto 0);
    signal d_i : std_logic_vector(2 downto 0);
    signal sel_i : std_logic_vector(1 downto 0);
    signal f_o : std_logic_vector(2 downto 0);
    
begin
    -- Connecting testbench signals with comparator_4bit
    -- entity (Unit Under Test)
    uut_mux_3bit_4to1 : entity work.mux_3bit_4to1
   
      port map(
            a_i => s_a,
            b_i => s_b,
  
        );

begin

   -- Report a note at the beginning of stimulus process
        report "Stimulus process started";

        -- First test case ...
        sel_i <= "00";
        s_a <= "0000";
        wait for 100 ns;
        -- ... and its expected outputs
        assert (
        (s_B_greater_A = '0') and
        (s_B_equals_A = '1') and
        (s_B_less_A = '0')
        )
        -- If false, then report an error
        -- If true, then do not report anything
        report "Input combination 0000, 0000 FAILED" severity error;

end Behavioral;
