-- Vhdl test bench created from schematic F:\STUDIA\UCISW2\Github\UCISW2-Projekt\Plytka.sch - Thu Jun 02 10:53:04 2022
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY Plytka_Plytka_sch_tb IS
END Plytka_Plytka_sch_tb;
ARCHITECTURE behavioral OF Plytka_Plytka_sch_tb IS 

   COMPONENT Plytka
   PORT( RotA	:	IN	STD_LOGIC; 
          RotB	:	IN	STD_LOGIC; 
          Clk_50MHz	:	IN	STD_LOGIC; 
          SW_3	:	IN	STD_LOGIC; 
          SW_2	:	IN	STD_LOGIC; 
          SW_1	:	IN	STD_LOGIC; 
          SW_0	:	IN	STD_LOGIC; 
          Led_7	:	OUT	STD_LOGIC; 
          Led	:	OUT	STD_LOGIC_VECTOR (1 DOWNTO 0); 
          SDC_MISO	:	IN	STD_LOGIC; 
          SDC_MOSI	:	OUT	STD_LOGIC; 
          SDC_SCK	:	OUT	STD_LOGIC; 
          SDC_SS	:	OUT	STD_LOGIC; 
          Led_8	:	OUT	STD_LOGIC; 
          LCD_E	:	OUT	STD_LOGIC; 
          LCD_RS	:	OUT	STD_LOGIC; 
          LCD_RW	:	OUT	STD_LOGIC; 
          LCD_D	:	INOUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          SF_CE	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL RotA	:	STD_LOGIC;
   SIGNAL RotB	:	STD_LOGIC;
   SIGNAL Clk_50MHz	:	STD_LOGIC;
   SIGNAL SW_3	:	STD_LOGIC;
   SIGNAL SW_2	:	STD_LOGIC;
   SIGNAL SW_1	:	STD_LOGIC;
   SIGNAL SW_0	:	STD_LOGIC;
   SIGNAL Led_7	:	STD_LOGIC;
   SIGNAL Led	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
   SIGNAL SDC_MISO	:	STD_LOGIC;
   SIGNAL SDC_MOSI	:	STD_LOGIC;
   SIGNAL SDC_SCK	:	STD_LOGIC;
   SIGNAL SDC_SS	:	STD_LOGIC;
   SIGNAL Led_8	:	STD_LOGIC;
   SIGNAL LCD_E	:	STD_LOGIC;
   SIGNAL LCD_RS	:	STD_LOGIC;
   SIGNAL LCD_RW	:	STD_LOGIC;
   SIGNAL LCD_D	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL SF_CE	:	STD_LOGIC;
	
	-- Clock period definitions
   constant Clk_period : time := 10 ns;
	
	signal FR_DO : std_logic_vector(7 downto 0) := (others => '0');
	signal FR_Rdy : std_logic := '0';
	signal FR_Pop : std_logic:= '0';
	signal FR_Busy : std_logic;
	signal FR_Start : std_logic:= '1';


BEGIN

   UUT: Plytka PORT MAP(
		RotA => RotA, 
		RotB => RotB, 
		Clk_50MHz => Clk_50MHz, 
		SW_3 => SW_3, 
		SW_2 => SW_2, 
		SW_1 => SW_1, 
		SW_0 => SW_0, 
		Led_7 => Led_7, 
		Led => Led, 
		SDC_MISO => SDC_MISO, 
		SDC_MOSI => SDC_MOSI, 
		SDC_SCK => SDC_SCK, 
		SDC_SS => SDC_SS, 
		Led_8 => Led_8, 
		LCD_E => LCD_E, 
		LCD_RS => LCD_RS, 
		LCD_RW => LCD_RW, 
		LCD_D => LCD_D, 
		SF_CE => SF_CE
   );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk_50MHz <= '0';
		wait for Clk_period/2;
		Clk_50MHz <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   process

      type t_FileOfCharacter is file of character;
      file fTheFile : t_FileOfCharacter is in "C:\Users\marci\Downloads\1.wav";
      variable byte : character;

   begin
      wait until rising_edge( Clk_50MHz ) and FR_Start = '1';
      
      FR_Busy <= '1';
      
      while not endfile( fTheFile ) loop
        wait for Clk_Period * 3.1;    -- represents SDCard read delay
        read( fTheFile, byte );
        FR_DO <= std_logic_vector( to_unsigned( character'pos( byte ) , 8 ) );
        FR_Rdy <= '1';
        wait until rising_edge( Clk_50MHz ) and FR_Pop = '1';
        FR_Rdy <= '0';
      end loop;

      FR_Busy <= '0';
      wait; -- forever
   end process;
	
	FR_Pop <= Led_8;
	Byte_Rdy <= FR_Rdy;
	Byte <= FR_DO;
	Led_7 <= FR_Busy;


END;

