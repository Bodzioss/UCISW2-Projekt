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
        <signal name="XLXN_53(7:0)" />
        <signal name="XLXN_54" />
        <signal name="XLXN_55" />
        <signal name="VGA_HS" />
        <signal name="VGA_VS" />
        <signal name="XLXN_61" />
        <signal name="XLXN_81" />
        <signal name="XLXN_83" />
        <signal name="XLXN_84" />
        <signal name="XLXN_85" />
        <signal name="VGA_R" />
        <signal name="VGA_G" />
        <signal name="VGA_B" />
        <signal name="XLXN_93" />
        <signal name="XLXN_94" />
        <signal name="XLXN_109" />
        <signal name="XLXN_110(7:0)" />
        <signal name="XLXN_113" />
        <signal name="XLXN_114" />
        <signal name="XLXN_115" />
        <signal name="XLXN_117" />
        <signal name="XLXN_118" />
        <signal name="XLXN_119" />
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
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_B" />
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
        <blockdef name="VGAtxt48x20">
            <timestamp>2022-5-18T11:28:5</timestamp>
            <rect width="304" x="64" y="-640" height="728" />
            <rect width="64" x="0" y="-620" height="24" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-448" y2="-448" x1="64" />
            <line x2="0" y1="-384" y2="-384" x1="64" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <line x2="0" y1="64" y2="64" x1="64" />
            <line x2="0" y1="0" y2="0" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="432" y1="-352" y2="-352" x1="368" />
            <line x2="432" y1="-608" y2="-608" x1="368" />
            <line x2="432" y1="-544" y2="-544" x1="368" />
            <line x2="432" y1="-480" y2="-480" x1="368" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="SDC_Help3">
            <timestamp>2022-5-25T20:24:42</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="SDC_FileReader" name="XLXI_2">
            <blockpin signalname="SDC_MISO" name="SDC_MISO" />
            <blockpin signalname="XLXN_61" name="Start" />
            <blockpin signalname="FName(7:0)" name="FName(7:0)" />
            <blockpin name="Reset" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="XLXN_83" name="DO_Pop" />
            <blockpin signalname="XLXN_81" name="Abort" />
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
        <block symbolname="inv" name="XLXI_53">
            <blockpin signalname="XLXN_54" name="I" />
            <blockpin signalname="XLXN_55" name="O" />
        </block>
        <block symbolname="VGAtxt48x20" name="XLXI_54">
            <blockpin signalname="XLXN_53(7:0)" name="Char_DI(7:0)" />
            <blockpin signalname="XLXN_93" name="Home" />
            <blockpin signalname="XLXN_84" name="NewLine" />
            <blockpin signalname="XLXN_93" name="Goto00" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="XLXN_94" name="CursorOn" />
            <blockpin signalname="XLXN_94" name="ScrollEn" />
            <blockpin signalname="XLXN_94" name="ScrollClear" />
            <blockpin signalname="XLXN_54" name="Busy" />
            <blockpin signalname="VGA_HS" name="VGA_HS" />
            <blockpin signalname="VGA_VS" name="VGA_VS" />
            <blockpin signalname="XLXN_85" name="VGA_RGB" />
            <blockpin signalname="XLXN_55" name="Char_WE" />
        </block>
        <block symbolname="SDC_Help3" name="XLXI_56">
            <blockpin signalname="XLXN_51" name="DO_Rdy" />
            <blockpin signalname="Led_7" name="Busy" />
            <blockpin signalname="Clk_50MHz" name="Clk" />
            <blockpin signalname="XLXN_49(7:0)" name="DO(7:0)" />
            <blockpin signalname="XLXN_84" name="New_Line" />
            <blockpin signalname="XLXN_81" name="Abort" />
            <blockpin signalname="XLXN_83" name="DO_Pop" />
            <blockpin signalname="XLXN_53(7:0)" name="DO_Out(7:0)" />
        </block>
        <block symbolname="buf" name="XLXI_58">
            <blockpin signalname="XLXN_85" name="I" />
            <blockpin signalname="VGA_B" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_59">
            <blockpin signalname="XLXN_85" name="I" />
            <blockpin signalname="VGA_G" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_57">
            <blockpin signalname="XLXN_85" name="I" />
            <blockpin signalname="VGA_R" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_64">
            <blockpin signalname="XLXN_93" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_66">
            <blockpin signalname="XLXN_94" name="P" />
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
            <wire x2="2544" y1="144" y2="144" x1="720" />
            <wire x2="2544" y1="144" y2="1120" x1="2544" />
            <wire x2="2752" y1="1120" y2="1120" x1="2544" />
            <wire x2="720" y1="144" y2="384" x1="720" />
            <wire x2="816" y1="384" y2="384" x1="720" />
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
            <wire x2="736" y1="512" y2="1280" x1="736" />
            <wire x2="2048" y1="1280" y2="1280" x1="736" />
            <wire x2="816" y1="512" y2="512" x1="736" />
            <wire x2="2048" y1="1056" y2="1056" x1="2000" />
            <wire x2="2048" y1="1056" y2="1280" x1="2048" />
        </branch>
        <branch name="XLXN_53(7:0)">
            <wire x2="2256" y1="512" y2="512" x1="1200" />
            <wire x2="2256" y1="512" y2="1440" x1="2256" />
            <wire x2="2272" y1="1440" y2="1440" x1="2256" />
        </branch>
        <branch name="XLXN_54">
            <wire x2="2720" y1="1696" y2="1696" x1="2704" />
        </branch>
        <instance x="2720" y="1728" name="XLXI_53" orien="R0" />
        <instance x="2272" y="2048" name="XLXI_54" orien="R0">
        </instance>
        <branch name="VGA_HS">
            <wire x2="2736" y1="1440" y2="1440" x1="2704" />
        </branch>
        <iomarker fontsize="28" x="2736" y="1440" name="VGA_HS" orien="R0" />
        <branch name="VGA_VS">
            <wire x2="2736" y1="1504" y2="1504" x1="2704" />
        </branch>
        <iomarker fontsize="28" x="2736" y="1504" name="VGA_VS" orien="R0" />
        <iomarker fontsize="28" x="2720" y="800" name="SDC_MOSI" orien="R0" />
        <iomarker fontsize="28" x="2720" y="864" name="SDC_SCK" orien="R0" />
        <iomarker fontsize="28" x="2912" y="736" name="SDC_MISO" orien="R180" />
        <iomarker fontsize="28" x="2720" y="928" name="SDC_SS" orien="R0" />
        <iomarker fontsize="28" x="2752" y="1120" name="Led_7" orien="R0" />
        <iomarker fontsize="28" x="2752" y="1184" name="Led(1:0)" orien="R0" />
        <branch name="XLXN_85">
            <wire x2="3008" y1="1568" y2="1568" x1="2704" />
            <wire x2="3008" y1="1568" y2="1648" x1="3008" />
            <wire x2="3008" y1="1648" y2="1744" x1="3008" />
            <wire x2="3040" y1="1744" y2="1744" x1="3008" />
            <wire x2="3040" y1="1648" y2="1648" x1="3008" />
            <wire x2="3040" y1="1568" y2="1568" x1="3008" />
        </branch>
        <branch name="XLXN_55">
            <wire x2="2208" y1="1328" y2="1504" x1="2208" />
            <wire x2="2272" y1="1504" y2="1504" x1="2208" />
            <wire x2="2960" y1="1328" y2="1328" x1="2208" />
            <wire x2="2960" y1="1328" y2="1696" x1="2960" />
            <wire x2="2960" y1="1696" y2="1696" x1="2944" />
        </branch>
        <instance x="3040" y="1776" name="XLXI_58" orien="R0" />
        <instance x="3040" y="1680" name="XLXI_59" orien="R0" />
        <instance x="3040" y="1600" name="XLXI_57" orien="R0" />
        <branch name="VGA_R">
            <wire x2="3296" y1="1568" y2="1568" x1="3264" />
        </branch>
        <iomarker fontsize="28" x="3296" y="1568" name="VGA_R" orien="R0" />
        <branch name="VGA_G">
            <wire x2="3296" y1="1648" y2="1648" x1="3264" />
        </branch>
        <iomarker fontsize="28" x="3296" y="1648" name="VGA_G" orien="R0" />
        <branch name="VGA_B">
            <wire x2="3296" y1="1744" y2="1744" x1="3264" />
        </branch>
        <iomarker fontsize="28" x="3296" y="1744" name="VGA_B" orien="R0" />
        <branch name="XLXN_93">
            <wire x2="2272" y1="1728" y2="1728" x1="2256" />
            <wire x2="2272" y1="1600" y2="1728" x1="2272" />
        </branch>
        <instance x="2128" y="1664" name="XLXI_64" orien="R90" />
        <branch name="XLXN_94">
            <wire x2="2272" y1="1888" y2="1888" x1="2256" />
            <wire x2="2272" y1="1888" y2="1952" x1="2272" />
            <wire x2="2272" y1="1824" y2="1888" x1="2272" />
        </branch>
        <instance x="2256" y="1952" name="XLXI_66" orien="R270" />
        <branch name="Clk_50MHz">
            <wire x2="208" y1="288" y2="288" x1="192" />
            <wire x2="192" y1="288" y2="1184" x1="192" />
            <wire x2="1280" y1="1184" y2="1184" x1="192" />
            <wire x2="1280" y1="1184" y2="1488" x1="1280" />
            <wire x2="2048" y1="1488" y2="1488" x1="1280" />
            <wire x2="2048" y1="1488" y2="2048" x1="2048" />
            <wire x2="2272" y1="2048" y2="2048" x1="2048" />
            <wire x2="2272" y1="2048" y2="2112" x1="2272" />
            <wire x2="1584" y1="1184" y2="1184" x1="1280" />
            <wire x2="432" y1="1488" y2="1488" x1="208" />
            <wire x2="1280" y1="1488" y2="1488" x1="432" />
            <wire x2="432" y1="448" y2="1488" x1="432" />
            <wire x2="816" y1="448" y2="448" x1="432" />
            <wire x2="1280" y1="1120" y2="1184" x1="1280" />
            <wire x2="1584" y1="1120" y2="1120" x1="1280" />
        </branch>
        <branch name="XLXN_81">
            <wire x2="1552" y1="384" y2="384" x1="1200" />
            <wire x2="1552" y1="384" y2="992" x1="1552" />
            <wire x2="1584" y1="992" y2="992" x1="1552" />
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
        <instance x="816" y="544" name="XLXI_56" orien="R0">
        </instance>
        <branch name="XLXN_51">
            <wire x2="752" y1="192" y2="320" x1="752" />
            <wire x2="816" y1="320" y2="320" x1="752" />
            <wire x2="2048" y1="192" y2="192" x1="752" />
            <wire x2="2048" y1="192" y2="992" x1="2048" />
            <wire x2="2048" y1="992" y2="992" x1="2000" />
        </branch>
        <branch name="XLXN_84">
            <wire x2="2128" y1="320" y2="320" x1="1200" />
            <wire x2="2128" y1="320" y2="1664" x1="2128" />
            <wire x2="2272" y1="1664" y2="1664" x1="2128" />
        </branch>
        <branch name="XLXN_83">
            <wire x2="1472" y1="448" y2="448" x1="1200" />
            <wire x2="1472" y1="448" y2="928" x1="1472" />
            <wire x2="1584" y1="928" y2="928" x1="1472" />
        </branch>
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
    </sheet>
</drawing>