----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:21:12 05/25/2022 
-- Design Name: 
-- Module Name:    SDC_Help3 - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SDC_Help3 is
    Port ( DO_Rdy : in  STD_LOGIC;
           DO : in  STD_LOGIC_VECTOR (7 downto 0);
           Busy : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           New_Line : out  STD_LOGIC;
           Abort : out  STD_LOGIC;
           DO_Pop : out  STD_LOGIC;
           DO_Out : out  STD_LOGIC_VECTOR (7 downto 0));
end SDC_Help3;

architecture Behavioral of SDC_Help3 is

type state_type is (Start , Wait_for_data, Send_with_NewLine, Send_NewLine, Send, Read_End);
signal State, NextState : state_type;

begin

	process ( Clk )
	begin
	 if rising_edge( Clk ) then
		State <= NextState;
	 end if;
	end process;

	process ( State, DO_Rdy )
	  variable data_counter : integer := 0;
	  variable bit_nb : integer := 1;
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
			if DO_Rdy = '1' and Busy = '1' then
				NextState <= Wait_for_data;
			else
				NextState <= Start;
		end if;
			
			

      -- Czekaj na dojœcie do odpowiednich pozycji nag³ówka
		when Wait_for_data =>
		if bit_nb = data1 or bit_nb = data3 then
			bit_nb := bit_nb + 1;
			NextState <= Send_with_NewLine;
		elsif bit_nb = data2 then
			bit_nb := bit_nb + 1;
			NextState <= Send;
		else 
			NextState <= Wait_for_data;
		end if;
			 

      -- Przeœlij bajt dzakoñczony NewLine'm
		when Send_with_NewLine =>
			bit_nb := bit_nb + 1;
			data_counter :=data_counter + 1;
			if data_counter = 3 then
				NextState <= Read_End;
			else 
				NextState <= Send_NewLine;
			end if;
			
			
		-- Przeœlij NewLine
		when Send_NewLine =>
			NextState <= Wait_for_data;
		
      -- Przeœlij bajt
		when Send =>
			bit_nb := bit_nb + 1;
			NextState <= Send_with_NewLine;
			
		-- Przeœlij bajt
		when Read_End =>
				NextState <= Read_End;

    end case;
  end process;
  
DO_Out <= DO  when State = Send_with_NewLine;
DO_Out <= DO  when State = Send;
New_Line <= '1' when State = Send_NewLine;
Abort <= '1' when State = Read_End;
DO_Pop <= '1' when State = Wait_for_data or State = Send_with_NewLine or State = Send else '0';


end Behavioral;

