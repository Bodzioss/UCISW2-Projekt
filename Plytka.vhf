--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Plytka.vhf
-- /___/   /\     Timestamp : 06/02/2022 18:56:17
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/lab/Downloads/UCISW2-Projekt-main/UCISW2-Projekt-main/Plytka.vhf -w C:/Users/lab/Downloads/UCISW2-Projekt-main/UCISW2-Projekt-main/Plytka.sch
--Design Name: Plytka
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

entity Plytka is
   port ( Clk_50MHz : in    std_logic; 
          RotA      : in    std_logic; 
          RotB      : in    std_logic; 
          SDC_MISO  : in    std_logic; 
          SW_0      : in    std_logic; 
          SW_1      : in    std_logic; 
          SW_2      : in    std_logic; 
          SW_3      : in    std_logic; 
          DO_Rdy    : out   std_logic; 
          LCD_E     : out   std_logic; 
          LCD_RS    : out   std_logic; 
          LCD_RW    : out   std_logic; 
          Led       : out   std_logic_vector (1 downto 0); 
          Led_7     : out   std_logic; 
          Led_8     : out   std_logic; 
          Lines     : out   std_logic_vector (63 downto 0); 
          SDC_MOSI  : out   std_logic; 
          SDC_SCK   : out   std_logic; 
          SDC_SS    : out   std_logic; 
          SF_CE     : out   std_logic; 
          LCD_D     : inout std_logic_vector (3 downto 0));
end Plytka;

architecture BEHAVIORAL of Plytka is
   attribute BOX_TYPE   : string ;
   signal DO                       : std_logic_vector (7 downto 0);
   signal FExt                     : std_logic_vector (1 downto 0);
   signal FName                    : std_logic_vector (7 downto 0);
   signal XLXN_61                  : std_logic;
   signal XLXN_136                 : std_logic;
   signal XLXN_139                 : std_logic;
   signal Led_7_DUMMY              : std_logic;
   signal Led_8_DUMMY              : std_logic;
   signal DO_Rdy_DUMMY             : std_logic;
   signal Lines_DUMMY              : std_logic_vector (63 downto 0);
   signal XLXI_2_Reset_openSignal  : std_logic;
   signal XLXI_68_Blank_openSignal : std_logic_vector (15 downto 0);
   signal XLXI_68_Reset_openSignal : std_logic;
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
   
   component RotaryEnc
      port ( ROT_A : in    std_logic; 
             ROT_B : in    std_logic; 
             RotL  : out   std_logic; 
             RotR  : out   std_logic; 
             Clk   : in    std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component LCD1x64
      port ( Clk_50MHz : in    std_logic; 
             Reset     : in    std_logic; 
             Line      : in    std_logic_vector (63 downto 0); 
             Blank     : in    std_logic_vector (15 downto 0); 
             LCD_D     : inout std_logic_vector (3 downto 0); 
             LCD_E     : out   std_logic; 
             LCD_RW    : out   std_logic; 
             LCD_RS    : out   std_logic; 
             SF_CE     : out   std_logic);
   end component;
   
   component SDC_Help4
      port ( DO_Rdy          : in    std_logic; 
             Busy            : in    std_logic; 
             Clk             : in    std_logic; 
             DO              : in    std_logic_vector (7 downto 0); 
             DO_Pop          : out   std_logic; 
             Num_Channels    : out   std_logic_vector (15 downto 0); 
             Sample_Rate     : out   std_logic_vector (31 downto 0); 
             Bits_Per_Sample : out   std_logic_vector (15 downto 0));
   end component;
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
begin
   DO_Rdy <= DO_Rdy_DUMMY;
   Led_7 <= Led_7_DUMMY;
   Led_8 <= Led_8_DUMMY;
   Lines(63 downto 0) <= Lines_DUMMY(63 downto 0);
   XLXI_2 : SDC_FileReader
      port map (Abort=>XLXN_136,
                Clk_Sys=>Clk_50MHz,
                Clk_50MHz=>Clk_50MHz,
                DO_Pop=>XLXN_139,
                FExt(1 downto 0)=>FExt(1 downto 0),
                FName(7 downto 0)=>FName(7 downto 0),
                Reset=>XLXI_2_Reset_openSignal,
                SDC_MISO=>SDC_MISO,
                Start=>XLXN_61,
                Busy=>Led_7_DUMMY,
                DO(7 downto 0)=>DO(7 downto 0),
                DO_Rdy=>DO_Rdy_DUMMY,
                Error(1 downto 0)=>Led(1 downto 0),
                SDC_MOSI=>SDC_MOSI,
                SDC_SCK=>SDC_SCK,
                SDC_SS=>SDC_SS);
   
   XLXI_7 : RotaryEnc
      port map (Clk=>Clk_50MHz,
                ROT_A=>RotA,
                ROT_B=>RotB,
                RotL=>XLXN_61,
                RotR=>XLXN_136);
   
   XLXI_30 : VCC
      port map (P=>FExt(1));
   
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
   
   XLXI_49 : VCC
      port map (P=>FExt(0));
   
   XLXI_68 : LCD1x64
      port map (Blank(15 downto 0)=>XLXI_68_Blank_openSignal(15 downto 0),
                Clk_50MHz=>Clk_50MHz,
                Line(63 downto 0)=>Lines_DUMMY(63 downto 0),
                Reset=>XLXI_68_Reset_openSignal,
                LCD_E=>LCD_E,
                LCD_RS=>LCD_RS,
                LCD_RW=>LCD_RW,
                SF_CE=>SF_CE,
                LCD_D(3 downto 0)=>LCD_D(3 downto 0));
   
   XLXI_72 : SDC_Help4
      port map (Busy=>Led_7_DUMMY,
                Clk=>Clk_50MHz,
                DO(7 downto 0)=>DO(7 downto 0),
                DO_Rdy=>DO_Rdy_DUMMY,
                Bits_Per_Sample(15 downto 0)=>Lines_DUMMY(15 downto 0),
                DO_Pop=>Led_8_DUMMY,
                Num_Channels(15 downto 0)=>Lines_DUMMY(63 downto 48),
                Sample_Rate(31 downto 0)=>Lines_DUMMY(47 downto 16));
   
   XLXI_73 : AND2
      port map (I0=>DO_Rdy_DUMMY,
                I1=>Led_8_DUMMY,
                O=>XLXN_139);
   
end BEHAVIORAL;


