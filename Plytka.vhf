--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Plytka.vhf
-- /___/   /\     Timestamp : 04/28/2022 13:41:30
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/lab/Desktop/Vaw/Wav/Plytka.vhf -w C:/Users/lab/Desktop/Vaw/Wav/Plytka.sch
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
          Led       : out   std_logic_vector (1 downto 0); 
          Led_7     : out   std_logic; 
          Output    : out   std_logic_vector (7 downto 0); 
          SDC_MOSI  : out   std_logic; 
          SDC_SCK   : out   std_logic; 
          SDC_SS    : out   std_logic);
end Plytka;

architecture BEHAVIORAL of Plytka is
   attribute BOX_TYPE   : string ;
   signal FExt                    : std_logic_vector (1 downto 0);
   signal FName                   : std_logic_vector (7 downto 0);
   signal XLXN_10                 : std_logic;
   signal XLXN_45                 : std_logic;
   signal XLXI_2_Abort_openSignal : std_logic;
   signal XLXI_2_Reset_openSignal : std_logic;
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
   
begin
   XLXI_2 : SDC_FileReader
      port map (Abort=>XLXI_2_Abort_openSignal,
                Clk_Sys=>Clk_50MHz,
                Clk_50MHz=>Clk_50MHz,
                DO_Pop=>XLXN_45,
                FExt(1 downto 0)=>FExt(1 downto 0),
                FName(7 downto 0)=>FName(7 downto 0),
                Reset=>XLXI_2_Reset_openSignal,
                SDC_MISO=>SDC_MISO,
                Start=>XLXN_10,
                Busy=>Led_7,
                DO(7 downto 0)=>Output(7 downto 0),
                DO_Rdy=>XLXN_45,
                Error(1 downto 0)=>Led(1 downto 0),
                SDC_MOSI=>SDC_MOSI,
                SDC_SCK=>SDC_SCK,
                SDC_SS=>SDC_SS);
   
   XLXI_7 : RotaryEnc
      port map (Clk=>Clk_50MHz,
                ROT_A=>RotA,
                ROT_B=>RotB,
                RotL=>XLXN_10,
                RotR=>open);
   
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
   
end BEHAVIORAL;


