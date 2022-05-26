<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="RotA" />
        <signal name="RotB" />
        <signal name="Clk_50MHz" />
        <signal name="FName(7)" />
        <signal name="FName(5)" />
        <signal name="FName(4)" />
        <signal name="FName(6)" />
        <signal name="FName(3)" />
        <signal name="FName(1)" />
        <signal name="FName(0)" />
        <signal name="FName(2)" />
        <signal name="SW_3" />
        <signal name="SW_2" />
        <signal name="SW_1" />
        <signal name="SW_0" />
        <signal name="FName(7:0)" />
        <signal name="FExt(1)" />
        <signal name="FExt(0)" />
        <signal name="FExt(1:0)" />
        <signal name="Led_7" />
        <signal name="Led(1:0)" />
        <signal name="SDC_MISO" />
        <signal name="SDC_MOSI" />
        <signal name="SDC_SCK" />
        <signal name="SDC_SS" />
        <signal name="XLXN_49(7:0)" />
        <signal name="XLXN_51" />
        <signal name="XLXN_61" />
        <signal name="XLXN_81(7:0)" />
        <signal name="XLXN_83(15:0)" />
        <signal name="XLXN_121" />
        <signal name="XLXN_122" />
        <signal name="XLXN_123(7:0)" />
        <signal name="XLXN_125" />
        <signal name="XLXN_126" />
        <signal name="XLXN_127(7:0)" />
        <signal name="XLXN_129" />
        <signal name="XLXN_130" />
        <signal name="XLXN_131(7:0)" />
        <signal name="Led_8" />
        <signal name="Lines(63:0)" />
        <signal name="Lines(63:56)" />
        <signal name="Lines(24:9)" />
        <signal name="Lines(33:26)" />
        <signal name="LCD_E" />
        <signal name="LCD_RS" />
        <signal name="LCD_RW" />
        <signal name="LCD_D(3:0)" />
        <signal name="SF_CE" />
        <port polarity="Input" name="RotA" />
        <port polarity="Input" name="RotB" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Input" name="SW_3" />
        <port polarity="Input" name="SW_2" />
        <port polarity="Input" name="SW_1" />
        <port polarity="Input" name="SW_0" />
        <port polarity="Output" name="Led_7" />
        <port polarity="Output" name="Led(1:0)" />
        <port polarity="Input" name="SDC_MISO" />
        <port polarity="Output" name="SDC_MOSI" />
        <port polarity="Output" name="SDC_SCK" />
        <port polarity="Output" name="SDC_SS" />
        <port polarity="Output" name="Led_8" />
        <port polarity="Output" name="LCD_E" />
        <port polarity="Output" name="LCD_RS" />
        <port polarity="Output" name="LCD_RW" />
        <port polarity="BiDirectional" name="LCD_D(3:0)" />
        <port polarity="Output" name="SF_CE" />
        <blockdef name="RotaryEnc">
            <timestamp>2022-4-13T10:21:41</timestamp>
            <rect width="256" x="64" y="-256" height="192" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="SDC_FileReader">
            <timestamp>2022-4-13T10:21:41</timestamp>
            <line x2="0" y1="160" y2="160" x1="64" />
            <line x2="416" y1="96" y2="96" x1="352" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
            <line x2="416" y1="-96" y2="-96" x1="352" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <rect width="64" x="352" y="20" height="24" />
            <line x2="416" y1="32" y2="32" x1="352" />
            <rect width="64" x="352" y="148" height="24" />
            <line x2="416" y1="160" y2="160" x1="352" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
            <line x2="352" y1="-288" y2="-288" x1="416" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="288" x="64" y="-320" height="512" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="LCD1x64">
            <timestamp>2022-5-26T10:43:3</timestamp>
            <line x2="416" y1="-288" y2="-288" x1="352" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <rect width="64" x="352" y="-108" height="24" />
            <line x2="416" y1="-96" y2="-96" x1="352" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
            <rect width="288" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="SDC_Help4">
            <timestamp>2022-5-26T11:1:53</timestamp>
            <rect width="336" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
            <rect width="64" x="400" y="-172" height="24" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
            <rect width="64" x="400" y="-108" height="24" />
            <line x2="464" y1="-96" y2="-96" x1="400" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <block symbolname="SDC_FileReader" name="XLXI_2">
            <blockpin signalname="SDC_MISO" name="SDC_MISO" />
            <blockpin signalname="XLXN_61" name="Start" />
            <blockpin signalname="FName(7:0)" name="FName(7:0)" />
            <blockpin name="Reset" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="Led_8" name="DO_Pop" />
            <blockpin name="Abort" />
            <blockpin signalname="SDC_MOSI" name="SDC_MOSI" />
            <blockpin signalname="SDC_SCK" name="SDC_SCK" />
            <blockpin signalname="SDC_SS" name="SDC_SS" />
            <blockpin signalname="Led(1:0)" name="Error(1:0)" />
            <blockpin signalname="XLXN_49(7:0)" name="DO(7:0)" />
            <blockpin signalname="XLXN_51" name="DO_Rdy" />
            <blockpin signalname="Led_7" name="Busy" />
            <blockpin signalname="FExt(1:0)" name="FExt(1:0)" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
        </block>
        <block symbolname="RotaryEnc" name="XLXI_7">
            <blockpin signalname="RotA" name="ROT_A" />
            <blockpin signalname="RotB" name="ROT_B" />
            <blockpin signalname="XLXN_61" name="RotL" />
            <blockpin name="RotR" />
            <blockpin signalname="Clk_50MHz" name="Clk" />
        </block>
        <block symbolname="gnd" name="XLXI_32">
            <blockpin signalname="FName(7)" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_33">
            <blockpin signalname="FName(5)" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_34">
            <blockpin signalname="FName(4)" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_37">
            <blockpin signalname="FName(6)" name="G" />
        </block>
        <block symbolname="buf" name="XLXI_42">
            <blockpin signalname="SW_3" name="I" />
            <blockpin signalname="FName(3)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_43">
            <blockpin signalname="SW_2" name="I" />
            <blockpin signalname="FName(2)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_44">
            <blockpin signalname="SW_1" name="I" />
            <blockpin signalname="FName(1)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_45">
            <blockpin signalname="SW_0" name="I" />
            <blockpin signalname="FName(0)" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_30">
            <blockpin signalname="FExt(1)" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_49">
            <blockpin signalname="FExt(0)" name="P" />
        </block>
        <block symbolname="LCD1x64" name="XLXI_68">
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin name="Reset" />
            <blockpin signalname="Lines(63:0)" name="Line(63:0)" />
            <blockpin name="Blank(15:0)" />
            <blockpin signalname="LCD_D(3:0)" name="LCD_D(3:0)" />
            <blockpin signalname="LCD_E" name="LCD_E" />
            <blockpin signalname="LCD_RW" name="LCD_RW" />
            <blockpin signalname="LCD_RS" name="LCD_RS" />
            <blockpin signalname="SF_CE" name="SF_CE" />
        </block>
        <block symbolname="SDC_Help4" name="XLXI_69">
            <blockpin signalname="XLXN_51" name="DO_Rdy" />
            <blockpin signalname="Led_7" name="Busy" />
            <blockpin signalname="Clk_50MHz" name="Clk" />
            <blockpin signalname="XLXN_49(7:0)" name="DO(7:0)" />
            <blockpin signalname="Led_8" name="DO_Pop" />
            <blockpin signalname="Lines(63:56)" name="Num_Channels(7:0)" />
            <blockpin signalname="Lines(24:9)" name="Sample_Rate(15:0)" />
            <blockpin signalname="Lines(33:26)" name="Bits_Per_Sample(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="RotA">
            <wire x2="208" y1="160" y2="160" x1="144" />
        </branch>
        <branch name="RotB">
            <wire x2="208" y1="224" y2="224" x1="144" />
        </branch>
        <iomarker fontsize="28" x="208" y="1488" name="Clk_50MHz" orien="R180" />
        <bustap x2="912" y1="1648" y2="1648" x1="1008" />
        <bustap x2="912" y1="1712" y2="1712" x1="1008" />
        <bustap x2="912" y1="1776" y2="1776" x1="1008" />
        <bustap x2="912" y1="1840" y2="1840" x1="1008" />
        <branch name="FName(7)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="880" y="1648" type="branch" />
            <wire x2="880" y1="1648" y2="1648" x1="704" />
            <wire x2="912" y1="1648" y2="1648" x1="880" />
        </branch>
        <branch name="FName(5)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="880" y="1776" type="branch" />
            <wire x2="880" y1="1776" y2="1776" x1="704" />
            <wire x2="912" y1="1776" y2="1776" x1="880" />
        </branch>
        <branch name="FName(4)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="880" y="1840" type="branch" />
            <wire x2="880" y1="1840" y2="1840" x1="704" />
            <wire x2="912" y1="1840" y2="1840" x1="880" />
        </branch>
        <branch name="FName(6)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="880" y="1712" type="branch" />
            <wire x2="880" y1="1712" y2="1712" x1="704" />
            <wire x2="912" y1="1712" y2="1712" x1="880" />
        </branch>
        <bustap x2="912" y1="1904" y2="1904" x1="1008" />
        <bustap x2="912" y1="1968" y2="1968" x1="1008" />
        <bustap x2="912" y1="2032" y2="2032" x1="1008" />
        <bustap x2="912" y1="2096" y2="2096" x1="1008" />
        <branch name="FName(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="880" y="1904" type="branch" />
            <wire x2="880" y1="1904" y2="1904" x1="496" />
            <wire x2="912" y1="1904" y2="1904" x1="880" />
        </branch>
        <branch name="FName(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="880" y="2032" type="branch" />
            <wire x2="880" y1="2032" y2="2032" x1="496" />
            <wire x2="912" y1="2032" y2="2032" x1="880" />
        </branch>
        <branch name="FName(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="880" y="2096" type="branch" />
            <wire x2="880" y1="2096" y2="2096" x1="496" />
            <wire x2="912" y1="2096" y2="2096" x1="880" />
        </branch>
        <branch name="FName(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="880" y="1968" type="branch" />
            <wire x2="880" y1="1968" y2="1968" x1="496" />
            <wire x2="912" y1="1968" y2="1968" x1="880" />
        </branch>
        <instance x="576" y="1584" name="XLXI_32" orien="R90" />
        <instance x="704" y="1840" name="XLXI_33" orien="R270" />
        <instance x="704" y="1904" name="XLXI_34" orien="R270" />
        <instance x="576" y="1648" name="XLXI_37" orien="R90" />
        <branch name="SW_3">
            <wire x2="272" y1="1904" y2="1904" x1="240" />
        </branch>
        <branch name="SW_2">
            <wire x2="272" y1="1968" y2="1968" x1="240" />
        </branch>
        <branch name="SW_1">
            <wire x2="272" y1="2032" y2="2032" x1="240" />
        </branch>
        <branch name="SW_0">
            <wire x2="272" y1="2096" y2="2096" x1="240" />
        </branch>
        <instance x="272" y="1936" name="XLXI_42" orien="R0" />
        <instance x="272" y="2000" name="XLXI_43" orien="R0" />
        <instance x="272" y="2064" name="XLXI_44" orien="R0" />
        <instance x="272" y="2128" name="XLXI_45" orien="R0" />
        <iomarker fontsize="28" x="240" y="1904" name="SW_3" orien="R180" />
        <iomarker fontsize="28" x="240" y="1968" name="SW_2" orien="R180" />
        <iomarker fontsize="28" x="240" y="2032" name="SW_1" orien="R180" />
        <iomarker fontsize="28" x="240" y="2096" name="SW_0" orien="R180" />
        <bustap x2="896" y1="1344" y2="1344" x1="992" />
        <bustap x2="896" y1="1408" y2="1408" x1="992" />
        <branch name="FExt(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="864" y="1344" type="branch" />
            <wire x2="864" y1="1344" y2="1344" x1="752" />
            <wire x2="896" y1="1344" y2="1344" x1="864" />
        </branch>
        <branch name="FExt(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="864" y="1408" type="branch" />
            <wire x2="864" y1="1408" y2="1408" x1="752" />
            <wire x2="896" y1="1408" y2="1408" x1="864" />
        </branch>
        <instance x="752" y="1408" name="XLXI_30" orien="R270" />
        <branch name="FExt(1:0)">
            <wire x2="1040" y1="1344" y2="1344" x1="992" />
            <wire x2="1040" y1="1344" y2="1408" x1="1040" />
            <wire x2="1344" y1="1344" y2="1344" x1="1040" />
            <wire x2="1040" y1="1408" y2="1408" x1="992" />
            <wire x2="1344" y1="864" y2="1344" x1="1344" />
            <wire x2="1584" y1="864" y2="864" x1="1344" />
        </branch>
        <branch name="Led_7">
            <wire x2="800" y1="384" y2="384" x1="736" />
            <wire x2="736" y1="384" y2="608" x1="736" />
            <wire x2="2544" y1="608" y2="608" x1="736" />
            <wire x2="2544" y1="608" y2="1120" x1="2544" />
            <wire x2="2752" y1="1120" y2="1120" x1="2544" />
            <wire x2="2544" y1="1120" y2="1120" x1="2000" />
        </branch>
        <branch name="Led(1:0)">
            <wire x2="2752" y1="1184" y2="1184" x1="2000" />
        </branch>
        <instance x="752" y="1472" name="XLXI_49" orien="R270" />
        <branch name="SDC_MISO">
            <wire x2="2912" y1="736" y2="736" x1="2000" />
        </branch>
        <branch name="SDC_MOSI">
            <wire x2="2720" y1="800" y2="800" x1="2000" />
        </branch>
        <branch name="SDC_SCK">
            <wire x2="2720" y1="864" y2="864" x1="2000" />
        </branch>
        <branch name="SDC_SS">
            <wire x2="2720" y1="928" y2="928" x1="2000" />
        </branch>
        <branch name="XLXN_49(7:0)">
            <wire x2="800" y1="512" y2="512" x1="784" />
            <wire x2="784" y1="512" y2="1280" x1="784" />
            <wire x2="2016" y1="1280" y2="1280" x1="784" />
            <wire x2="2016" y1="1056" y2="1056" x1="2000" />
            <wire x2="2016" y1="1056" y2="1280" x1="2016" />
        </branch>
        <iomarker fontsize="28" x="2720" y="800" name="SDC_MOSI" orien="R0" />
        <iomarker fontsize="28" x="2720" y="864" name="SDC_SCK" orien="R0" />
        <iomarker fontsize="28" x="2912" y="736" name="SDC_MISO" orien="R180" />
        <iomarker fontsize="28" x="2720" y="928" name="SDC_SS" orien="R0" />
        <iomarker fontsize="28" x="2752" y="1120" name="Led_7" orien="R0" />
        <iomarker fontsize="28" x="2752" y="1184" name="Led(1:0)" orien="R0" />
        <branch name="Clk_50MHz">
            <wire x2="208" y1="288" y2="288" x1="192" />
            <wire x2="192" y1="288" y2="1184" x1="192" />
            <wire x2="1280" y1="1184" y2="1184" x1="192" />
            <wire x2="1280" y1="1184" y2="1488" x1="1280" />
            <wire x2="2048" y1="1488" y2="1488" x1="1280" />
            <wire x2="2048" y1="1488" y2="1696" x1="2048" />
            <wire x2="2416" y1="1696" y2="1696" x1="2048" />
            <wire x2="1584" y1="1184" y2="1184" x1="1280" />
            <wire x2="432" y1="1488" y2="1488" x1="208" />
            <wire x2="1280" y1="1488" y2="1488" x1="432" />
            <wire x2="800" y1="448" y2="448" x1="432" />
            <wire x2="432" y1="448" y2="1488" x1="432" />
            <wire x2="1280" y1="1120" y2="1184" x1="1280" />
            <wire x2="1584" y1="1120" y2="1120" x1="1280" />
        </branch>
        <branch name="FName(7:0)">
            <wire x2="1376" y1="1648" y2="1648" x1="1008" />
            <wire x2="1376" y1="1648" y2="1712" x1="1376" />
            <wire x2="1376" y1="1712" y2="1776" x1="1376" />
            <wire x2="1376" y1="1776" y2="1840" x1="1376" />
            <wire x2="1376" y1="1840" y2="1904" x1="1376" />
            <wire x2="1376" y1="1904" y2="1968" x1="1376" />
            <wire x2="1376" y1="1968" y2="2032" x1="1376" />
            <wire x2="1376" y1="2032" y2="2096" x1="1376" />
            <wire x2="1376" y1="1712" y2="1712" x1="1008" />
            <wire x2="1376" y1="1776" y2="1776" x1="1008" />
            <wire x2="1376" y1="1840" y2="1840" x1="1008" />
            <wire x2="1376" y1="1904" y2="1904" x1="1008" />
            <wire x2="1376" y1="1968" y2="1968" x1="1008" />
            <wire x2="1376" y1="2032" y2="2032" x1="1008" />
            <wire x2="1376" y1="2096" y2="2096" x1="1008" />
            <wire x2="1376" y1="800" y2="1648" x1="1376" />
            <wire x2="1584" y1="800" y2="800" x1="1376" />
        </branch>
        <instance x="1584" y="1024" name="XLXI_2" orien="R0">
        </instance>
        <instance x="208" y="384" name="XLXI_7" orien="R0">
        </instance>
        <branch name="XLXN_61">
            <wire x2="656" y1="160" y2="160" x1="592" />
            <wire x2="656" y1="160" y2="720" x1="656" />
            <wire x2="1584" y1="720" y2="720" x1="656" />
            <wire x2="1584" y1="720" y2="736" x1="1584" />
        </branch>
        <iomarker fontsize="28" x="144" y="160" name="RotA" orien="R180" />
        <iomarker fontsize="28" x="144" y="224" name="RotB" orien="R180" />
        <instance x="2416" y="1728" name="XLXI_68" orien="R0">
        </instance>
        <instance x="800" y="544" name="XLXI_69" orien="R0">
        </instance>
        <branch name="XLXN_51">
            <wire x2="736" y1="208" y2="320" x1="736" />
            <wire x2="800" y1="320" y2="320" x1="736" />
            <wire x2="2016" y1="208" y2="208" x1="736" />
            <wire x2="2016" y1="208" y2="992" x1="2016" />
            <wire x2="2016" y1="992" y2="992" x1="2000" />
        </branch>
        <branch name="Led_8">
            <wire x2="1424" y1="320" y2="320" x1="1264" />
            <wire x2="1424" y1="320" y2="928" x1="1424" />
            <wire x2="1584" y1="928" y2="928" x1="1424" />
            <wire x2="1424" y1="144" y2="320" x1="1424" />
        </branch>
        <branch name="Lines(63:0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1856" y="320" type="branch" />
            <wire x2="1856" y1="272" y2="320" x1="1856" />
            <wire x2="1856" y1="320" y2="352" x1="1856" />
            <wire x2="1856" y1="352" y2="416" x1="1856" />
            <wire x2="1856" y1="416" y2="496" x1="1856" />
            <wire x2="1856" y1="496" y2="544" x1="1856" />
            <wire x2="2128" y1="544" y2="544" x1="1856" />
            <wire x2="2128" y1="544" y2="1440" x1="2128" />
            <wire x2="2416" y1="1440" y2="1440" x1="2128" />
        </branch>
        <bustap x2="1760" y1="352" y2="352" x1="1856" />
        <bustap x2="1760" y1="416" y2="416" x1="1856" />
        <bustap x2="1760" y1="496" y2="496" x1="1856" />
        <branch name="Lines(63:56)">
            <wire x2="1504" y1="384" y2="384" x1="1264" />
            <wire x2="1504" y1="352" y2="384" x1="1504" />
            <wire x2="1760" y1="352" y2="352" x1="1504" />
        </branch>
        <branch name="Lines(24:9)">
            <wire x2="1504" y1="448" y2="448" x1="1264" />
            <wire x2="1504" y1="416" y2="448" x1="1504" />
            <wire x2="1760" y1="416" y2="416" x1="1504" />
        </branch>
        <branch name="Lines(33:26)">
            <wire x2="1504" y1="512" y2="512" x1="1264" />
            <wire x2="1504" y1="496" y2="512" x1="1504" />
            <wire x2="1760" y1="496" y2="496" x1="1504" />
        </branch>
        <branch name="LCD_E">
            <wire x2="2864" y1="1440" y2="1440" x1="2832" />
        </branch>
        <iomarker fontsize="28" x="2864" y="1440" name="LCD_E" orien="R0" />
        <branch name="LCD_RS">
            <wire x2="2864" y1="1504" y2="1504" x1="2832" />
        </branch>
        <iomarker fontsize="28" x="2864" y="1504" name="LCD_RS" orien="R0" />
        <branch name="LCD_RW">
            <wire x2="2864" y1="1568" y2="1568" x1="2832" />
        </branch>
        <iomarker fontsize="28" x="2864" y="1568" name="LCD_RW" orien="R0" />
        <branch name="LCD_D(3:0)">
            <wire x2="2864" y1="1632" y2="1632" x1="2832" />
        </branch>
        <iomarker fontsize="28" x="2864" y="1632" name="LCD_D(3:0)" orien="R0" />
        <branch name="SF_CE">
            <wire x2="2864" y1="1696" y2="1696" x1="2832" />
        </branch>
        <iomarker fontsize="28" x="2864" y="1696" name="SF_CE" orien="R0" />
        <iomarker fontsize="28" x="1424" y="144" name="Led_8" orien="R270" />
    </sheet>
</drawing>