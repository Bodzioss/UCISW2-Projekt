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
           Num_Channels : out  STD_LOGIC_VECTOR (15 downto 0);
           Sample_Rate : out  STD_LOGIC_VECTOR (31 downto 0);
           Bits_Per_Sample : out  STD_LOGIC_VECTOR (15 downto 0));
end SDC_Help4;

architecture Behavioral of SDC_Help4 is

signal data_counter : integer := 0;
signal bit_nb : integer := 0;
type state_type is (Start , Wait_for_data, Ready, Send_End);
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
			Num_Channels <= (others => '0');
			Sample_Rate <= (others => '0');
			Bits_Per_Sample <= (others => '0');
			if DO_Rdy = '1' and Busy = '1' then
				NextState <= Wait_for_data;
			else
				NextState <= Start;
		end if;
			
			
			
	      -- Przeœlij bajt
		when Ready =>
			if DO_Rdy = '1' then
				bit_nb <= bit_nb + 1;
				NextState <= Wait_for_data;
			end if;

      -- Czekaj na dojœcie do odpowiednich pozycji nag³ówka
		when Wait_for_data =>
		if bit_nb = data1 then
			Num_Channels(7 downto 0) <= DO;
			NextState <= Ready;
		elsif bit_nb = data1+1 then
			Num_Channels(15 downto 8) <= DO;
			NextState <= Ready;
		elsif bit_nb = data2 then
			Sample_Rate(7 downto 0) <= DO;
			NextState <= Ready;
		elsif bit_nb = data2+1 then
			Sample_Rate(15 downto 8) <= DO;
			NextState <= Ready;
		elsif bit_nb = data2+2 then
			Sample_Rate(23 downto 16) <= DO;
			NextState <= Ready;
		elsif bit_nb = data2+3 then
			Sample_Rate(31 downto 24) <= DO;
			NextState <= Ready;
		elsif bit_nb = data3 then
			Bits_Per_Sample(7 downto 0) <= DO;
			NextState <= Ready;
		elsif bit_nb = data3 then
			Bits_Per_Sample(15 downto 8) <= DO;
			NextState <= Send_End;
		else 
			bit_nb <= bit_nb + 1;
			NextState <= Ready;
		end if;
			 


		when Send_End =>
			null;

    end case;
  end process;

--Num_Channels <= DO  when State = Send_Num_Channels and rising_edge( Clk );
--Sample_Rate <= DO  when State = Send_Sample_Rate;
--Bits_Per_Sample <= DO  when State = Send_Bits_Per_Sample and rising_edge( Clk );

DO_Pop <= '1' when State = Wait_for_data else '0';


end Behavioral;



