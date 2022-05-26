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
--use IEEE.NUMERIC_STD.ALL;

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
           Num_Channels : out  STD_LOGIC_VECTOR (7 downto 0);
           Sample_Rate : out  STD_LOGIC_VECTOR (15 downto 0);
           Bits_Per_Sample : out  STD_LOGIC_VECTOR (7 downto 0));
end SDC_Help4;

architecture Behavioral of SDC_Help4 is

type state_type is (Start , Wait_for_data, Send_Num_Channels, Send_Sample_Rate, Send_Bits_Per_Sample);
signal State, NextState : state_type;

begin
	process ( Clk )
	begin
	 if rising_edge( Clk ) then
		if Busy = '0' then
			State <= Start;
		else
			State <= NextState;
		end if;
	 end if;
	end process;

	process ( State, DO_Rdy )
	  variable data_counter : integer := 0;
	  variable bit_nb : integer := 0;
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
		if bit_nb = data1 then
			NextState <= Send_Num_Channels;
		elsif bit_nb = data2 then
			NextState <= Send_Sample_Rate;
		elsif bit_nb = data2 then
			NextState <= Send_Bits_Per_Sample;
		else 
			bit_nb := bit_nb + 1;
			NextState <= Wait_for_data;
		end if;
			 




		
      -- Przeœlij bajt
		when Send_Num_Channels =>
			bit_nb := bit_nb + 1;
			NextState <= Wait_for_data;
			
			
			
      -- Przeœlij bajt dzakoñczony NewLine'm
		when Send_Sample_Rate =>
			bit_nb := bit_nb + 1;
			data_counter :=data_counter + 1;
			if data_counter = 1 then
				NextState <= Wait_for_data;
			else 
				NextState <= Send_Sample_Rate;
			end if;

			
		-- Przeœlij bajt
		when Send_Bits_Per_Sample =>
			bit_nb := bit_nb + 1;
			NextState <= Wait_for_data;
			

    end case;
  end process;

Num_Channels <= DO  when State = Send_Num_Channels and rising_edge( Clk );
--Sample_Rate <= DO  when State = Send_Sample_Rate;
Bits_Per_Sample <= DO  when State = Send_Bits_Per_Sample and rising_edge( Clk );

DO_Pop <= '1' when State = Wait_for_data or State = Send_Num_Channels or State = Send_Sample_Rate or State = Send_Bits_Per_Sample else '0';


end Behavioral;



