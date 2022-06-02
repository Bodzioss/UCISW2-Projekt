--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:21:30 06/02/2022
-- Design Name:   
-- Module Name:   F:/STUDIA/UCISW2/Github/UCISW2-Projekt/Helper_test.vhd
-- Project Name:  Wav
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SDC_Help4
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Helper_test IS
END Helper_test;
 
ARCHITECTURE behavior OF Helper_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SDC_Help4
    PORT(
         DO_Rdy : IN  std_logic;
         DO : IN  std_logic_vector(7 downto 0);
         Busy : IN  std_logic;
         Clk : IN  std_logic;
         DO_Pop : OUT  std_logic;
         Num_Channels : OUT  std_logic_vector(15 downto 0);
         Sample_Rate : OUT  std_logic_vector(31 downto 0);
         Bits_Per_Sample : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal DO_Rdy : std_logic := '0';
   signal DO : std_logic_vector(7 downto 0) := (others => '0');
   signal Busy : std_logic := '0';
   signal Clk : std_logic := '0';

 	--Outputs
   signal DO_Pop : std_logic;
   signal Num_Channels : std_logic_vector(15 downto 0);
   signal Sample_Rate : std_logic_vector(31 downto 0);
   signal Bits_Per_Sample : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
	
	signal FR_DO : std_logic_vector(7 downto 0) := (others => '0');
	signal FR_Rdy : std_logic := '0';
	signal FR_Pop : std_logic:= '0';
	signal FR_Busy : std_logic;
	signal FR_Start : std_logic:= '1';
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SDC_Help4 PORT MAP (
          DO_Rdy => DO_Rdy,
          DO => DO,
          Busy => Busy,
          Clk => Clk,
          DO_Pop => DO_Pop,
          Num_Channels => Num_Channels,
          Sample_Rate => Sample_Rate,
          Bits_Per_Sample => Bits_Per_Sample
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 
   -- Stimulus process
   process

      type t_FileOfCharacter is file of character;
      file fTheFile : t_FileOfCharacter is in "C:\Users\marci\Downloads\1.wav";
      variable byte : character;

   begin
      wait until rising_edge( Clk ) and FR_Start = '1';
      
      FR_Busy <= '1';
      
      while not endfile( fTheFile ) loop
        wait for Clk_Period * 3.1;    -- represents SDCard read delay
        read( fTheFile, byte );
        FR_DO <= std_logic_vector( to_unsigned( character'pos( byte ) , 8 ) );
        FR_Rdy <= '1';
        wait until rising_edge( Clk ) and FR_Pop = '1';
        FR_Rdy <= '0';
      end loop;

      FR_Busy <= '0';
      wait; -- forever
   end process;
	
	FR_Pop <= DO_Pop;
	DO_Rdy <= FR_Rdy;
	DO <= FR_DO;
	Busy <= FR_Busy;
END;
