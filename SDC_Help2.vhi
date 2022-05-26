
-- VHDL Instantiation Created from source file SDC_Help2.vhd -- 22:04:43 05/25/2022
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT SDC_Help2
	PORT(
		DO_Rdy : IN std_logic;
		DO : IN std_logic_vector(7 downto 0);
		Busy : IN std_logic;
		Clk : IN std_logic;          
		New_Line : OUT std_logic;
		Abort : OUT std_logic;
		DO_Out : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_SDC_Help2: SDC_Help2 PORT MAP(
		DO_Rdy => ,
		DO => ,
		Busy => ,
		Clk => ,
		New_Line => ,
		Abort => ,
		DO_Out => 
	);


