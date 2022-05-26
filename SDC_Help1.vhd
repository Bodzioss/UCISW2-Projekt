----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:59:31 05/25/2022 
-- Design Name: 
-- Module Name:    SDC_Help1 - Behavioral 
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

entity SDC_Help1 is
    Port ( Do_Rdy : in  STD_LOGIC;
           DO : in  STD_LOGIC;
           Busy : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           New_Line : out  STD_LOGIC;
           DO_Out : out  STD_LOGIC_VECTOR (7 downto 0));
end SDC_Help1;

architecture Behavioral of SDC_Help1 is

type state_type is ();
signal State, NextState : state_type;

begin

	process ( Clk )
	begin
	 if rising_edge( Clk ) then
		State <= NextState;
	 end if;
	end process;

	process ( State, DO_Rdy, Busy ,Pass_Bit_Button )
	  variable counter : integer := '0';
	  variable bit_nb : integer := '1';
	  variable small_word : integer := 1;
	  variable large_word : integer := 2;
	  type INT_ARRAY is array (integer range <>) of integer;
	  constant DATA_POSITIONS : INT_ARRAY := (22,24,34);
	  
	  
	  begin
    
    NextState <= State; -- default
	 
    -- Wait until DAC is ready
    case State is
      when Start =>
        if DO_Rdy = '1' and Busy = '1' then
			NextState <= Ready;
		end if;
			
      -- Ustawianie Do-pop na 0 (Bufor czasowy)
		when Ready =>
		if bit_nb = DATA_POSITIONS(0) or bit_nb = DATA_POSITIONS(2) then
			bit_nb <= bit_nb + 1;
			counter <= 0;
			NextState <= Send1;
		elsif bit_nb = DATA_POSITIONS(1) then
			bit_nb <= bit_nb + 1;
			counter <= 0;
			NextState <= Send2;
		else 
			NextState <= WaitForPop;
		end if;
			 

      -- Przesy³anie 1 bajta
		when Send1 =>
			counter <= counter + 1;
			bit_nb <= bit_nb + 1;
			NextState <= WaitForPop;
		
      -- Przesy³anie 2 bajta
		when Send2 =>
			counter <= counter + 1;
			bit_nb <= bit_nb + 1;
			if counter < 2 then
				 NextState <= Send2;
			else 
				 NextState <= WaitForPop;
			end if;


      -- Sprawdzanie warunku zakoñczenia
		when WaitForPop =>
			if DO_Rdy = '0' or Busy = '0' then
				 NextState <= Start;
			elsif DO_Rdy = '1' and Busy = '1' and Pass_Bit_Button = '1' then
				 NextState <= Ready;
			end if;
    end case;
  end process;
  
  
end Behavioral;

