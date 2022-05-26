----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:34:33 04/28/2022 
-- Design Name: 
-- Module Name:    SDC_helper2 - Behavioral 
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

entity SDC_helper2 is
    Port ( DO_Rdy : in  STD_LOGIC;
           DO : in  STD_LOGIC_VECTOR (7 downto 0);
           Busy : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Button : in  STD_LOGIC;
           DO_Pop : out  STD_LOGIC;
           DO_Out : out  STD_LOGIC_VECTOR (7 downto 0));
end SDC_helper2;

architecture Behavioral of SDC_helper2 is

type state_type is (Start, Ready , WaitForPop );
signal State, NextState : state_type;

begin

  process ( Clk )
  begin
    if rising_edge( Clk ) then
      State <= NextState;
    end if;
  end process;
  
    process ( State, DO_Rdy, Busy, Button )
  begin
    
    NextState <= State; -- default
	 
    -- Stan pocz¹tkowy czekamy na gotowoœæ SDC_FileREader i wciœniêcie przycisku
    case State is
      when Start =>
        if DO_Rdy = '1' and Busy = '1' and Button = '1' then
			NextState <= Ready;
		end if;
			
      -- Ustawianie Do-pop na 0 (Bufor czasowy)
		-- Wys³anie DO na output
      when Ready =>
          NextState <= WaitForPop;


      -- Sprawdzanie warunku zakoñczenia
		-- lub oczekiwanie na przycisk
		when WaitForPop =>
		if DO_Rdy = '0' or Busy = '0' or Button = '0' then
          NextState <= Start;
		elsif DO_Rdy = '1' and Busy = '1' and Button = '1' then
			 NextState <= Ready;
      end if;
		
    end case;
  end process;

	-- Przesuwanie o jeden bit do przodu gdy jesteœmy gotowi
	DO_Pop <= '1' when State = Ready else '0';
	
	--Wysy³anie DO na output
	DO_Out <= DO(7 downto 0) when State = WaitForPop;

end Behavioral;