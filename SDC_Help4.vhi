
-- VHDL Instantiation Created from source file SDC_Help4.vhd -- 11:10:07 06/02/2022
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT SDC_Help4
	PORT(
		DO_Rdy : IN std_logic;
		DO : IN std_logic_vector(7 downto 0);
		Busy : IN std_logic;
		Clk : IN std_logic;          
		DO_Pop : OUT std_logic;
		Num_Channels : OUT std_logic_vector(15 downto 0);
		Sample_Rate : OUT std_logic_vector(31 downto 0);
		Bits_Per_Sample : OUT std_logic_vector(15 downto 0)
		);
	END COMPONENT;

	Inst_SDC_Help4: SDC_Help4 PORT MAP(
		DO_Rdy => ,
		DO => ,
		Busy => ,
		Clk => ,
		DO_Pop => ,
		Num_Channels => ,
		Sample_Rate => ,
		Bits_Per_Sample => 
	);


