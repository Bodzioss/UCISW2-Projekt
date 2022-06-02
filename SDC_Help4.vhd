----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:51:50 05/26/2022 
-- Design Name: 
-- Module Name:    SDC_Help4 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SDC_Help4 is
    Port ( DO_Rdy : in  STD_LOGIC;
           DO : in  STD_LOGIC_VECTOR (7 downto 0);
           Busy : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           DO_Pop : out  STD_LOGIC;
           Num_Channels : out  STD_LOGIC_VECTOR (15 downto 0);
           Sample_Rate : out  STD_LOGIC_VECTOR (31 downto 0);
           Bits_Per_Sample : out  STD_LOGIC_VECTOR (15 downto 0));
end SDC_Help4;

architecture Behavioral of SDC_Help4 is

signal data_counter : unsigned (7 downto 0);
signal bit_nb : unsigned (7 downto 0) := "00000000";
type state_type is (Start , Wait_for_data, Ready,  Send_End);
signal State, NextState : state_type;

begin
	process ( Clk )
	begin
	 if rising_edge( Clk ) then
		State <= NextState;
	 end if;
	end process;

	process ( State, DO_Rdy , Busy )
	  
	  
	  type INT_ARRAY is array (integer range <>) of integer;
	  -- constant DATA_POSITIONS : INT_ARRAY := (22,24,34);
	  constant data1 : integer := 22;
	  constant data2 : integer := 24;
	  constant data3 : integer := 34;
	  
	  
	  begin
    
    NextState <= State; -- default
	 
    -- Czekaj a¿ FileReader bêdzie gotowy
    case State is
      when Start =>
			--Num_Channels <= (others => '0');
			--Sample_Rate <= (others => '0');
			--Bits_Per_Sample <= (others => '0');
			--bit_nb <= (others => '0');
			if DO_Rdy = '1' and Busy = '1' then
				NextState <= Ready;
			else
				NextState <= Start;
		end if;
			
			
			
	      -- Przeœlij bajt
		when Ready =>
			if DO_Rdy = '1' then
				NextState <= Wait_for_data;
			elsif bit_nb = "11111111"  then
				NextState <= Send_End;
			else
				NextState <= Ready;
			end if;

      -- Czekaj na dojœcie do odpowiednich pozycji nag³ówka
		when Wait_for_data =>
			NextState <= Ready;


		when Send_End =>
			null;

    end case;
  end process;
  

bit_nb <= bit_nb + 1  when State = Ready and rising_edge( Clk ) and DO_Rdy = '1';

Num_Channels(7 downto 0) <= DO  when State = Wait_for_data and rising_edge( Clk ) and bit_nb = "00010111" ;
Num_Channels(15 downto 8) <= DO  when State = Wait_for_data and rising_edge( Clk ) and bit_nb = "00011000" ;

Sample_Rate(7 downto 0) <= DO  when State = Wait_for_data and rising_edge( Clk ) and bit_nb = "00011001";
Sample_Rate(15 downto 8) <= DO  when State = Wait_for_data and rising_edge( Clk ) and bit_nb = "00011010";
Sample_Rate(23 downto 16) <= DO  when State = Wait_for_data and rising_edge( Clk ) and bit_nb = "00011011";
Sample_Rate(31 downto 24) <= DO  when State = Wait_for_data and rising_edge( Clk ) and bit_nb = "00011100";

Bits_per_sample(7 downto 0) <= DO  when State = Wait_for_data and rising_edge( Clk ) and bit_nb = "00100011" ;
Bits_per_sample(15 downto 8) <= DO  when State = Wait_for_data and rising_edge( Clk ) and bit_nb = "00100100" ;

DO_Pop <= '1' when State = Ready else '0';


end Behavioral;



