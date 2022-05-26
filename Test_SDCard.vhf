--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Test_SDCard.vhf
-- /___/   /\     Timestamp : 04/13/2022 13:18:45
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/lab/Desktop/Vaw/Wav/Test_SDCard.vhf -w C:/Users/lab/Downloads/Test_SDCard/Test_SDCard.sch
--Design Name: Test_SDCard
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Test_SDCard is
   port ( Clk_50MHz : in    std_logic; 
          ROT_A     : in    std_logic; 
          ROT_B     : in    std_logic; 
          SDC_MISO  : in    std_logic; 
          SW_0      : in    std_logic; 
          SW_1      : in    std_logic; 
          SW_2      : in    std_logic; 
          SW_3      : in    std_logic; 
          LED       : out   std_logic_vector (1 downto 0); 
          LED_7     : out   std_logic; 
          SDC_MOSI  : out   std_logic; 
          SDC_SCK   : out   std_logic; 
          SDC_SS    : out   std_logic; 
          VGA_B     : out   std_logic; 
          VGA_G     : out   std_logic; 
          VGA_HS    : out   std_logic; 
          VGA_R     : out   std_logic; 
          VGA_VS    : out   std_logic);
end Test_SDCard;

architecture BEHAVIORAL of Test_SDCard is
   attribute BOX_TYPE   : string ;
   signal FExt      : std_logic_vector (1 downto 0);
   signal FName     : std_logic_vector (7 downto 0);
   signal XLXN_5    : std_logic_vector (7 downto 0);
   signal XLXN_7    : std_logic;
   signal XLXN_8    : std_logic;
   signal XLXN_15   : std_logic;
   signal XLXN_17   : std_logic;
   signal XLXN_564  : std_logic;
   signal XLXN_612  : std_logic;
   signal XLXN_613  : std_logic;
   signal XLXN_614  : std_logic;
   signal XLXN_793  : std_logic;
   signal XLXN_794  : std_logic;
   signal XLXN_795  : std_logic;
   signal XLXN_796  : std_logic;
   component SDC_FileReader
      port ( SDC_MISO  : in    std_logic; 
             Start     : in    std_logic; 
             FName     : in    std_logic_vector (7 downto 0); 
             Reset     : in    std_logic; 
             Clk_50MHz : in    std_logic; 
             DO_Pop    : in    std_logic; 
             Abort     : in    std_logic; 
             SDC_MOSI  : out   std_logic; 
             SDC_SCK   : out   std_logic; 
             SDC_SS    : out   std_logic; 
             Error     : out   std_logic_vector (1 downto 0); 
             DO        : out   std_logic_vector (7 downto 0); 
             DO_Rdy    : out   std_logic; 
             Busy      : out   std_logic; 
             FExt      : in    std_logic_vector (1 downto 0); 
             Clk_Sys   : in    std_logic);
   end component;
   
   component VGAtxt48x20
      port ( Char_DI     : in    std_logic_vector (7 downto 0); 
             Home        : in    std_logic; 
             NewLine     : in    std_logic; 
             Goto00      : in    std_logic; 
             Clk_Sys     : in    std_logic; 
             Clk_50MHz   : in    std_logic; 
             CursorOn    : in    std_logic; 
             ScrollEn    : in    std_logic; 
             ScrollClear : in    std_logic; 
             Busy        : out   std_logic; 
             VGA_HS      : out   std_logic; 
             VGA_VS      : out   std_logic; 
             VGA_RGB     : out   std_logic; 
             Char_WE     : in    std_logic);
   end component;
   
   component RotaryEnc
      port ( ROT_A : in    std_logic; 
             ROT_B : in    std_logic; 
             RotL  : out   std_logic; 
             RotR  : out   std_logic; 
             Clk   : in    std_logic);
   end component;
   
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
begin
   XLXI_1 : SDC_FileReader
      port map (Abort=>XLXN_793,
                Clk_Sys=>Clk_50MHz,
                Clk_50MHz=>Clk_50MHz,
                DO_Pop=>XLXN_7,
                FExt(1 downto 0)=>FExt(1 downto 0),
                FName(7 downto 0)=>FName(7 downto 0),
                Reset=>XLXN_794,
                SDC_MISO=>SDC_MISO,
                Start=>XLXN_8,
                Busy=>LED_7,
                DO(7 downto 0)=>XLXN_5(7 downto 0),
                DO_Rdy=>XLXN_15,
                Error(1 downto 0)=>LED(1 downto 0),
                SDC_MOSI=>SDC_MOSI,
                SDC_SCK=>SDC_SCK,
                SDC_SS=>SDC_SS);
   
   XLXI_2 : VGAtxt48x20
      port map (Char_DI(7 downto 0)=>XLXN_5(7 downto 0),
                Char_WE=>XLXN_7,
                Clk_Sys=>Clk_50MHz,
                Clk_50MHz=>Clk_50MHz,
                CursorOn=>XLXN_612,
                Goto00=>XLXN_796,
                Home=>XLXN_795,
                NewLine=>XLXN_793,
                ScrollClear=>XLXN_614,
                ScrollEn=>XLXN_613,
                Busy=>XLXN_17,
                VGA_HS=>VGA_HS,
                VGA_RGB=>XLXN_564,
                VGA_VS=>VGA_VS);
   
   XLXI_3 : RotaryEnc
      port map (Clk=>Clk_50MHz,
                ROT_A=>ROT_A,
                ROT_B=>ROT_B,
                RotL=>XLXN_8,
                RotR=>XLXN_793);
   
   XLXI_9 : AND2B1
      port map (I0=>XLXN_17,
                I1=>XLXN_15,
                O=>XLXN_7);
   
   XLXI_10 : BUF
      port map (I=>XLXN_564,
                O=>VGA_R);
   
   XLXI_11 : BUF
      port map (I=>XLXN_564,
                O=>VGA_G);
   
   XLXI_12 : BUF
      port map (I=>XLXN_564,
                O=>VGA_B);
   
   XLXI_27 : VCC
      port map (P=>XLXN_612);
   
   XLXI_28 : VCC
      port map (P=>XLXN_613);
   
   XLXI_29 : VCC
      port map (P=>XLXN_614);
   
   XLXI_30 : VCC
      port map (P=>FExt(1));
   
   XLXI_31 : GND
      port map (G=>FExt(0));
   
   XLXI_32 : GND
      port map (G=>FName(7));
   
   XLXI_33 : VCC
      port map (P=>FName(5));
   
   XLXI_34 : VCC
      port map (P=>FName(4));
   
   XLXI_37 : GND
      port map (G=>FName(6));
   
   XLXI_42 : BUF
      port map (I=>SW_3,
                O=>FName(3));
   
   XLXI_43 : BUF
      port map (I=>SW_2,
                O=>FName(2));
   
   XLXI_44 : BUF
      port map (I=>SW_1,
                O=>FName(1));
   
   XLXI_45 : BUF
      port map (I=>SW_0,
                O=>FName(0));
   
   XLXI_136 : GND
      port map (G=>XLXN_794);
   
   XLXI_137 : GND
      port map (G=>XLXN_795);
   
   XLXI_138 : GND
      port map (G=>XLXN_796);
   
end BEHAVIORAL;


