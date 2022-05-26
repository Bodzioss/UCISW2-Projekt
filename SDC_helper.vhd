----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:52:43 04/28/2022 
-- Design Name: 
-- Module Name:    SDC_helper - Behavioral 
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

entity SDC_helper is
    Port ( DO_Rdy : in  STD_LOGIC;
           Busy : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           DO_Pop : out  STD_LOGIC);
end SDC_helper;

architecture Behavioral of SDC_helper is


type state_type is (Start, Ready , WaitForPop );
signal State, NextState : state_type;

begin

  process ( Clk )
  begin
    if rising_edge( Clk ) then
      State <= NextState;
    end if;
  end process;
  
    process ( State, DO_Rdy, Busy )
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
          NextState <= WaitForPop;


      -- Sprawdzanie warunku zakoñczenia
		when WaitForPop =>
		if DO_Rdy = '0' or Busy = '0' then
          NextState <= Start;
		elsif DO_Rdy = '1' and Busy = '1' then
			 NextState <= Ready;
      end if;


    end case;
  end process;


end Behavioral;

