-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "11/13/2022 21:46:02"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	encoder_serial IS
    PORT (
	nGRst : IN std_logic;
	clk : IN std_logic;
	mIn : IN std_logic;
	code : OUT std_logic_vector(7 DOWNTO 0);
	busy_o : OUT std_logic
	);
END encoder_serial;

-- Design Ports Information
-- code[0]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- code[1]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- code[2]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- code[3]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- code[4]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- code[5]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- code[6]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- code[7]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busy_o	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nGRst	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mIn	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF encoder_serial IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_nGRst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_mIn : std_logic;
SIGNAL ww_code : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_busy_o : std_logic;
SIGNAL \cntrl_Op|nord|y~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \code[0]~output_o\ : std_logic;
SIGNAL \code[1]~output_o\ : std_logic;
SIGNAL \code[2]~output_o\ : std_logic;
SIGNAL \code[3]~output_o\ : std_logic;
SIGNAL \code[4]~output_o\ : std_logic;
SIGNAL \code[5]~output_o\ : std_logic;
SIGNAL \code[6]~output_o\ : std_logic;
SIGNAL \code[7]~output_o\ : std_logic;
SIGNAL \busy_o~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \binC_Op|ff0|Q~0_combout\ : std_logic;
SIGNAL \nGRst~input_o\ : std_logic;
SIGNAL \binC_Op|ff2|Q~0_combout\ : std_logic;
SIGNAL \binC_Op|ff2|Q~q\ : std_logic;
SIGNAL \cntrl_Op|nad2|y~0_combout\ : std_logic;
SIGNAL \cntrl_Op|nad2|y~1_combout\ : std_logic;
SIGNAL \binC_Op|ff0|Q~q\ : std_logic;
SIGNAL \cntrl_Op|cMem|prog~1_combout\ : std_logic;
SIGNAL \binC_Op|ff1|Q~feeder_combout\ : std_logic;
SIGNAL \binC_Op|ff1|Q~q\ : std_logic;
SIGNAL \cntrl_Op|nord|y~0_combout\ : std_logic;
SIGNAL \cntrl_Op|nord|y~0clkctrl_outclk\ : std_logic;
SIGNAL \reg8bits_Op|ff0|Q~q\ : std_logic;
SIGNAL \mIn~input_o\ : std_logic;
SIGNAL \FF_Op|Q~feeder_combout\ : std_logic;
SIGNAL \FF_Op|Q~q\ : std_logic;
SIGNAL \and8_Op|bit0|y~combout\ : std_logic;
SIGNAL \xor8_Op|bit0|y~combout\ : std_logic;
SIGNAL \reg8bitsFinal_Op|ff0|Q~0_combout\ : std_logic;
SIGNAL \cntrl_Op|cMem|prog~0_combout\ : std_logic;
SIGNAL \cntrl_Op|nad4|y~0_combout\ : std_logic;
SIGNAL \reg8bitsFinal_Op|ff0|Q~q\ : std_logic;
SIGNAL \reg8bits_Op|ff1|Q~feeder_combout\ : std_logic;
SIGNAL \reg8bits_Op|ff1|Q~q\ : std_logic;
SIGNAL \and8_Op|bit1|y~0_combout\ : std_logic;
SIGNAL \and8_Op|bit7|y~0_combout\ : std_logic;
SIGNAL \xor8_Op|bit1|y~combout\ : std_logic;
SIGNAL \reg8bitsFinal_Op|ff1|Q~0_combout\ : std_logic;
SIGNAL \reg8bitsFinal_Op|ff1|Q~q\ : std_logic;
SIGNAL \reg8bits_Op|ff2|Q~feeder_combout\ : std_logic;
SIGNAL \reg8bits_Op|ff2|Q~q\ : std_logic;
SIGNAL \xor8_Op|bit2|y~combout\ : std_logic;
SIGNAL \reg8bitsFinal_Op|ff2|Q~0_combout\ : std_logic;
SIGNAL \reg8bitsFinal_Op|ff2|Q~q\ : std_logic;
SIGNAL \reg8bits_Op|ff3|Q~feeder_combout\ : std_logic;
SIGNAL \reg8bits_Op|ff3|Q~q\ : std_logic;
SIGNAL \and8_Op|bit3|y~0_combout\ : std_logic;
SIGNAL \xor8_Op|bit3|y~combout\ : std_logic;
SIGNAL \reg8bitsFinal_Op|ff3|Q~0_combout\ : std_logic;
SIGNAL \reg8bitsFinal_Op|ff3|Q~q\ : std_logic;
SIGNAL \reg8bits_Op|ff4|Q~q\ : std_logic;
SIGNAL \xor8_Op|bit4|y~combout\ : std_logic;
SIGNAL \reg8bitsFinal_Op|ff4|Q~0_combout\ : std_logic;
SIGNAL \reg8bitsFinal_Op|ff4|Q~q\ : std_logic;
SIGNAL \reg8bits_Op|ff5|Q~feeder_combout\ : std_logic;
SIGNAL \reg8bits_Op|ff5|Q~q\ : std_logic;
SIGNAL \xor8_Op|bit5|y~combout\ : std_logic;
SIGNAL \reg8bitsFinal_Op|ff5|Q~0_combout\ : std_logic;
SIGNAL \reg8bitsFinal_Op|ff5|Q~q\ : std_logic;
SIGNAL \reg8bits_Op|ff6|Q~feeder_combout\ : std_logic;
SIGNAL \reg8bits_Op|ff6|Q~q\ : std_logic;
SIGNAL \and8_Op|bit6|y~0_combout\ : std_logic;
SIGNAL \xor8_Op|bit6|y~combout\ : std_logic;
SIGNAL \reg8bitsFinal_Op|ff6|Q~0_combout\ : std_logic;
SIGNAL \reg8bitsFinal_Op|ff6|Q~q\ : std_logic;
SIGNAL \reg8bits_Op|ff7|Q~feeder_combout\ : std_logic;
SIGNAL \reg8bits_Op|ff7|Q~q\ : std_logic;
SIGNAL \xor8_Op|bit7|y~combout\ : std_logic;
SIGNAL \reg8bitsFinal_Op|ff7|Q~0_combout\ : std_logic;
SIGNAL \reg8bitsFinal_Op|ff7|Q~q\ : std_logic;
SIGNAL \busy_Op|or2|y~0_combout\ : std_logic;
SIGNAL \cntrl_Op|nad2|ALT_INV_y~1_combout\ : std_logic;
SIGNAL \cntrl_Op|nad4|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \busy_Op|or2|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \reg8bitsFinal_Op|ff7|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg8bitsFinal_Op|ff6|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg8bitsFinal_Op|ff5|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg8bitsFinal_Op|ff0|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg8bitsFinal_Op|ff1|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg8bitsFinal_Op|ff2|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg8bitsFinal_Op|ff3|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg8bitsFinal_Op|ff4|ALT_INV_Q~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_nGRst <= nGRst;
ww_clk <= clk;
ww_mIn <= mIn;
code <= ww_code;
busy_o <= ww_busy_o;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\cntrl_Op|nord|y~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \cntrl_Op|nord|y~0_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\cntrl_Op|nad2|ALT_INV_y~1_combout\ <= NOT \cntrl_Op|nad2|y~1_combout\;
\cntrl_Op|nad4|ALT_INV_y~0_combout\ <= NOT \cntrl_Op|nad4|y~0_combout\;
\busy_Op|or2|ALT_INV_y~0_combout\ <= NOT \busy_Op|or2|y~0_combout\;
\reg8bitsFinal_Op|ff7|ALT_INV_Q~q\ <= NOT \reg8bitsFinal_Op|ff7|Q~q\;
\reg8bitsFinal_Op|ff6|ALT_INV_Q~q\ <= NOT \reg8bitsFinal_Op|ff6|Q~q\;
\reg8bitsFinal_Op|ff5|ALT_INV_Q~q\ <= NOT \reg8bitsFinal_Op|ff5|Q~q\;
\reg8bitsFinal_Op|ff0|ALT_INV_Q~q\ <= NOT \reg8bitsFinal_Op|ff0|Q~q\;
\reg8bitsFinal_Op|ff1|ALT_INV_Q~q\ <= NOT \reg8bitsFinal_Op|ff1|Q~q\;
\reg8bitsFinal_Op|ff2|ALT_INV_Q~q\ <= NOT \reg8bitsFinal_Op|ff2|Q~q\;
\reg8bitsFinal_Op|ff3|ALT_INV_Q~q\ <= NOT \reg8bitsFinal_Op|ff3|Q~q\;
\reg8bitsFinal_Op|ff4|ALT_INV_Q~q\ <= NOT \reg8bitsFinal_Op|ff4|Q~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X11_Y24_N16
\code[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg8bitsFinal_Op|ff0|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \code[0]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\code[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg8bitsFinal_Op|ff1|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \code[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\code[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg8bitsFinal_Op|ff2|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \code[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\code[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg8bitsFinal_Op|ff3|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \code[3]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\code[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg8bitsFinal_Op|ff4|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \code[4]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\code[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg8bitsFinal_Op|ff5|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \code[5]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\code[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg8bitsFinal_Op|ff6|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \code[6]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\code[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg8bitsFinal_Op|ff7|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \code[7]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\busy_o~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \busy_Op|or2|ALT_INV_y~0_combout\,
	devoe => ww_devoe,
	o => \busy_o~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X13_Y13_N16
\binC_Op|ff0|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \binC_Op|ff0|Q~0_combout\ = !\binC_Op|ff0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \binC_Op|ff0|Q~q\,
	combout => \binC_Op|ff0|Q~0_combout\);

-- Location: IOIBUF_X13_Y24_N22
\nGRst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nGRst,
	o => \nGRst~input_o\);

-- Location: LCCOMB_X13_Y13_N6
\binC_Op|ff2|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \binC_Op|ff2|Q~0_combout\ = \binC_Op|ff2|Q~q\ $ (((\binC_Op|ff1|Q~q\ & \binC_Op|ff0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binC_Op|ff1|Q~q\,
	datac => \binC_Op|ff2|Q~q\,
	datad => \binC_Op|ff0|Q~q\,
	combout => \binC_Op|ff2|Q~0_combout\);

-- Location: FF_X13_Y13_N7
\binC_Op|ff2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \binC_Op|ff2|Q~0_combout\,
	clrn => \cntrl_Op|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binC_Op|ff2|Q~q\);

-- Location: LCCOMB_X14_Y13_N20
\cntrl_Op|nad2|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl_Op|nad2|y~0_combout\ = (\binC_Op|ff2|Q~q\ & \binC_Op|ff1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \binC_Op|ff2|Q~q\,
	datad => \binC_Op|ff1|Q~q\,
	combout => \cntrl_Op|nad2|y~0_combout\);

-- Location: LCCOMB_X14_Y13_N10
\cntrl_Op|nad2|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl_Op|nad2|y~1_combout\ = (\clk~input_o\ & (((!\binC_Op|ff0|Q~q\ & \cntrl_Op|nad2|y~0_combout\)) # (!\nGRst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nGRst~input_o\,
	datab => \clk~input_o\,
	datac => \binC_Op|ff0|Q~q\,
	datad => \cntrl_Op|nad2|y~0_combout\,
	combout => \cntrl_Op|nad2|y~1_combout\);

-- Location: FF_X13_Y13_N17
\binC_Op|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binC_Op|ff0|Q~0_combout\,
	clrn => \cntrl_Op|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binC_Op|ff0|Q~q\);

-- Location: LCCOMB_X13_Y13_N10
\cntrl_Op|cMem|prog~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl_Op|cMem|prog~1_combout\ = \binC_Op|ff1|Q~q\ $ (\binC_Op|ff0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binC_Op|ff1|Q~q\,
	datab => \binC_Op|ff0|Q~q\,
	combout => \cntrl_Op|cMem|prog~1_combout\);

-- Location: LCCOMB_X13_Y13_N18
\binC_Op|ff1|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \binC_Op|ff1|Q~feeder_combout\ = \cntrl_Op|cMem|prog~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cntrl_Op|cMem|prog~1_combout\,
	combout => \binC_Op|ff1|Q~feeder_combout\);

-- Location: FF_X13_Y13_N19
\binC_Op|ff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \binC_Op|ff1|Q~feeder_combout\,
	clrn => \cntrl_Op|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binC_Op|ff1|Q~q\);

-- Location: LCCOMB_X13_Y13_N4
\cntrl_Op|nord|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl_Op|nord|y~0_combout\ = LCELL((!\clk~input_o\ & (!\binC_Op|ff1|Q~q\ & \binC_Op|ff2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~input_o\,
	datab => \binC_Op|ff1|Q~q\,
	datad => \binC_Op|ff2|Q~q\,
	combout => \cntrl_Op|nord|y~0_combout\);

-- Location: CLKCTRL_G1
\cntrl_Op|nord|y~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \cntrl_Op|nord|y~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \cntrl_Op|nord|y~0clkctrl_outclk\);

-- Location: FF_X14_Y13_N13
\reg8bits_Op|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \xor8_Op|bit0|y~combout\,
	clrn => \cntrl_Op|nad2|ALT_INV_y~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg8bits_Op|ff0|Q~q\);

-- Location: IOIBUF_X13_Y24_N15
\mIn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mIn,
	o => \mIn~input_o\);

-- Location: LCCOMB_X13_Y13_N26
\FF_Op|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FF_Op|Q~feeder_combout\ = \mIn~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mIn~input_o\,
	combout => \FF_Op|Q~feeder_combout\);

-- Location: FF_X13_Y13_N27
\FF_Op|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FF_Op|Q~feeder_combout\,
	clrn => \cntrl_Op|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF_Op|Q~q\);

-- Location: LCCOMB_X13_Y13_N30
\and8_Op|bit0|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \and8_Op|bit0|y~combout\ = (\FF_Op|Q~q\ & (\binC_Op|ff2|Q~q\ $ (((\binC_Op|ff1|Q~q\) # (\binC_Op|ff0|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binC_Op|ff1|Q~q\,
	datab => \binC_Op|ff2|Q~q\,
	datac => \FF_Op|Q~q\,
	datad => \binC_Op|ff0|Q~q\,
	combout => \and8_Op|bit0|y~combout\);

-- Location: LCCOMB_X14_Y13_N14
\xor8_Op|bit0|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \xor8_Op|bit0|y~combout\ = \reg8bits_Op|ff0|Q~q\ $ (\and8_Op|bit0|y~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8bits_Op|ff0|Q~q\,
	datab => \and8_Op|bit0|y~combout\,
	combout => \xor8_Op|bit0|y~combout\);

-- Location: LCCOMB_X14_Y13_N8
\reg8bitsFinal_Op|ff0|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg8bitsFinal_Op|ff0|Q~0_combout\ = !\xor8_Op|bit0|y~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xor8_Op|bit0|y~combout\,
	combout => \reg8bitsFinal_Op|ff0|Q~0_combout\);

-- Location: LCCOMB_X13_Y13_N2
\cntrl_Op|cMem|prog~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl_Op|cMem|prog~0_combout\ = \binC_Op|ff2|Q~q\ $ (\binC_Op|ff1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binC_Op|ff2|Q~q\,
	datab => \binC_Op|ff1|Q~q\,
	combout => \cntrl_Op|cMem|prog~0_combout\);

-- Location: LCCOMB_X13_Y13_N12
\cntrl_Op|nad4|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl_Op|nad4|y~0_combout\ = (\clk~input_o\ & (((!\binC_Op|ff0|Q~q\ & !\cntrl_Op|cMem|prog~0_combout\)) # (!\nGRst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nGRst~input_o\,
	datab => \clk~input_o\,
	datac => \binC_Op|ff0|Q~q\,
	datad => \cntrl_Op|cMem|prog~0_combout\,
	combout => \cntrl_Op|nad4|y~0_combout\);

-- Location: FF_X14_Y13_N9
\reg8bitsFinal_Op|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cntrl_Op|nord|y~0clkctrl_outclk\,
	d => \reg8bitsFinal_Op|ff0|Q~0_combout\,
	clrn => \cntrl_Op|nad4|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg8bitsFinal_Op|ff0|Q~q\);

-- Location: LCCOMB_X14_Y13_N0
\reg8bits_Op|ff1|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg8bits_Op|ff1|Q~feeder_combout\ = \xor8_Op|bit1|y~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \xor8_Op|bit1|y~combout\,
	combout => \reg8bits_Op|ff1|Q~feeder_combout\);

-- Location: FF_X14_Y13_N1
\reg8bits_Op|ff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg8bits_Op|ff1|Q~feeder_combout\,
	clrn => \cntrl_Op|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg8bits_Op|ff1|Q~q\);

-- Location: LCCOMB_X13_Y13_N0
\and8_Op|bit1|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \and8_Op|bit1|y~0_combout\ = (\FF_Op|Q~q\ & !\binC_Op|ff2|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FF_Op|Q~q\,
	datac => \binC_Op|ff2|Q~q\,
	combout => \and8_Op|bit1|y~0_combout\);

-- Location: LCCOMB_X13_Y13_N22
\and8_Op|bit7|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \and8_Op|bit7|y~0_combout\ = (!\binC_Op|ff1|Q~q\ & (!\binC_Op|ff0|Q~q\ & (\FF_Op|Q~q\ & \binC_Op|ff2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binC_Op|ff1|Q~q\,
	datab => \binC_Op|ff0|Q~q\,
	datac => \FF_Op|Q~q\,
	datad => \binC_Op|ff2|Q~q\,
	combout => \and8_Op|bit7|y~0_combout\);

-- Location: LCCOMB_X14_Y13_N2
\xor8_Op|bit1|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \xor8_Op|bit1|y~combout\ = \reg8bits_Op|ff1|Q~q\ $ (((\and8_Op|bit7|y~0_combout\) # ((\binC_Op|ff1|Q~q\ & \and8_Op|bit1|y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binC_Op|ff1|Q~q\,
	datab => \reg8bits_Op|ff1|Q~q\,
	datac => \and8_Op|bit1|y~0_combout\,
	datad => \and8_Op|bit7|y~0_combout\,
	combout => \xor8_Op|bit1|y~combout\);

-- Location: LCCOMB_X16_Y13_N0
\reg8bitsFinal_Op|ff1|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg8bitsFinal_Op|ff1|Q~0_combout\ = !\xor8_Op|bit1|y~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xor8_Op|bit1|y~combout\,
	combout => \reg8bitsFinal_Op|ff1|Q~0_combout\);

-- Location: FF_X16_Y13_N1
\reg8bitsFinal_Op|ff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cntrl_Op|nord|y~0clkctrl_outclk\,
	d => \reg8bitsFinal_Op|ff1|Q~0_combout\,
	clrn => \cntrl_Op|nad4|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg8bitsFinal_Op|ff1|Q~q\);

-- Location: LCCOMB_X14_Y13_N4
\reg8bits_Op|ff2|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg8bits_Op|ff2|Q~feeder_combout\ = \xor8_Op|bit2|y~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \xor8_Op|bit2|y~combout\,
	combout => \reg8bits_Op|ff2|Q~feeder_combout\);

-- Location: FF_X14_Y13_N5
\reg8bits_Op|ff2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg8bits_Op|ff2|Q~feeder_combout\,
	clrn => \cntrl_Op|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg8bits_Op|ff2|Q~q\);

-- Location: LCCOMB_X13_Y13_N28
\xor8_Op|bit2|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \xor8_Op|bit2|y~combout\ = \reg8bits_Op|ff2|Q~q\ $ (((\and8_Op|bit7|y~0_combout\) # ((\binC_Op|ff0|Q~q\ & \and8_Op|bit1|y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8bits_Op|ff2|Q~q\,
	datab => \binC_Op|ff0|Q~q\,
	datac => \and8_Op|bit1|y~0_combout\,
	datad => \and8_Op|bit7|y~0_combout\,
	combout => \xor8_Op|bit2|y~combout\);

-- Location: LCCOMB_X16_Y13_N2
\reg8bitsFinal_Op|ff2|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg8bitsFinal_Op|ff2|Q~0_combout\ = !\xor8_Op|bit2|y~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \xor8_Op|bit2|y~combout\,
	combout => \reg8bitsFinal_Op|ff2|Q~0_combout\);

-- Location: FF_X16_Y13_N3
\reg8bitsFinal_Op|ff2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cntrl_Op|nord|y~0clkctrl_outclk\,
	d => \reg8bitsFinal_Op|ff2|Q~0_combout\,
	clrn => \cntrl_Op|nad4|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg8bitsFinal_Op|ff2|Q~q\);

-- Location: LCCOMB_X14_Y13_N26
\reg8bits_Op|ff3|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg8bits_Op|ff3|Q~feeder_combout\ = \xor8_Op|bit3|y~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \xor8_Op|bit3|y~combout\,
	combout => \reg8bits_Op|ff3|Q~feeder_combout\);

-- Location: FF_X14_Y13_N27
\reg8bits_Op|ff3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg8bits_Op|ff3|Q~feeder_combout\,
	clrn => \cntrl_Op|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg8bits_Op|ff3|Q~q\);

-- Location: LCCOMB_X13_Y13_N8
\and8_Op|bit3|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \and8_Op|bit3|y~0_combout\ = (\FF_Op|Q~q\ & ((\binC_Op|ff1|Q~q\ & (\binC_Op|ff0|Q~q\ & !\binC_Op|ff2|Q~q\)) # (!\binC_Op|ff1|Q~q\ & (!\binC_Op|ff0|Q~q\ & \binC_Op|ff2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binC_Op|ff1|Q~q\,
	datab => \binC_Op|ff0|Q~q\,
	datac => \binC_Op|ff2|Q~q\,
	datad => \FF_Op|Q~q\,
	combout => \and8_Op|bit3|y~0_combout\);

-- Location: LCCOMB_X14_Y13_N24
\xor8_Op|bit3|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \xor8_Op|bit3|y~combout\ = \reg8bits_Op|ff3|Q~q\ $ (\and8_Op|bit3|y~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8bits_Op|ff3|Q~q\,
	datad => \and8_Op|bit3|y~0_combout\,
	combout => \xor8_Op|bit3|y~combout\);

-- Location: LCCOMB_X16_Y13_N4
\reg8bitsFinal_Op|ff3|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg8bitsFinal_Op|ff3|Q~0_combout\ = !\xor8_Op|bit3|y~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xor8_Op|bit3|y~combout\,
	combout => \reg8bitsFinal_Op|ff3|Q~0_combout\);

-- Location: FF_X16_Y13_N5
\reg8bitsFinal_Op|ff3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cntrl_Op|nord|y~0clkctrl_outclk\,
	d => \reg8bitsFinal_Op|ff3|Q~0_combout\,
	clrn => \cntrl_Op|nad4|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg8bitsFinal_Op|ff3|Q~q\);

-- Location: FF_X13_Y13_N25
\reg8bits_Op|ff4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \xor8_Op|bit4|y~combout\,
	clrn => \cntrl_Op|nad2|ALT_INV_y~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg8bits_Op|ff4|Q~q\);

-- Location: LCCOMB_X13_Y13_N14
\xor8_Op|bit4|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \xor8_Op|bit4|y~combout\ = \reg8bits_Op|ff4|Q~q\ $ (((\and8_Op|bit7|y~0_combout\) # ((\and8_Op|bit1|y~0_combout\ & \cntrl_Op|cMem|prog~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \and8_Op|bit1|y~0_combout\,
	datab => \reg8bits_Op|ff4|Q~q\,
	datac => \cntrl_Op|cMem|prog~1_combout\,
	datad => \and8_Op|bit7|y~0_combout\,
	combout => \xor8_Op|bit4|y~combout\);

-- Location: LCCOMB_X16_Y13_N10
\reg8bitsFinal_Op|ff4|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg8bitsFinal_Op|ff4|Q~0_combout\ = !\xor8_Op|bit4|y~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xor8_Op|bit4|y~combout\,
	combout => \reg8bitsFinal_Op|ff4|Q~0_combout\);

-- Location: FF_X16_Y13_N11
\reg8bitsFinal_Op|ff4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cntrl_Op|nord|y~0clkctrl_outclk\,
	d => \reg8bitsFinal_Op|ff4|Q~0_combout\,
	clrn => \cntrl_Op|nad4|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg8bitsFinal_Op|ff4|Q~q\);

-- Location: LCCOMB_X14_Y13_N30
\reg8bits_Op|ff5|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg8bits_Op|ff5|Q~feeder_combout\ = \xor8_Op|bit5|y~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \xor8_Op|bit5|y~combout\,
	combout => \reg8bits_Op|ff5|Q~feeder_combout\);

-- Location: FF_X14_Y13_N31
\reg8bits_Op|ff5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg8bits_Op|ff5|Q~feeder_combout\,
	clrn => \cntrl_Op|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg8bits_Op|ff5|Q~q\);

-- Location: LCCOMB_X14_Y13_N28
\xor8_Op|bit5|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \xor8_Op|bit5|y~combout\ = \reg8bits_Op|ff5|Q~q\ $ (((\FF_Op|Q~q\ & (\cntrl_Op|cMem|prog~0_combout\ & !\binC_Op|ff0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8bits_Op|ff5|Q~q\,
	datab => \FF_Op|Q~q\,
	datac => \cntrl_Op|cMem|prog~0_combout\,
	datad => \binC_Op|ff0|Q~q\,
	combout => \xor8_Op|bit5|y~combout\);

-- Location: LCCOMB_X16_Y13_N24
\reg8bitsFinal_Op|ff5|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg8bitsFinal_Op|ff5|Q~0_combout\ = !\xor8_Op|bit5|y~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xor8_Op|bit5|y~combout\,
	combout => \reg8bitsFinal_Op|ff5|Q~0_combout\);

-- Location: FF_X16_Y13_N25
\reg8bitsFinal_Op|ff5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cntrl_Op|nord|y~0clkctrl_outclk\,
	d => \reg8bitsFinal_Op|ff5|Q~0_combout\,
	clrn => \cntrl_Op|nad4|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg8bitsFinal_Op|ff5|Q~q\);

-- Location: LCCOMB_X14_Y13_N6
\reg8bits_Op|ff6|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg8bits_Op|ff6|Q~feeder_combout\ = \xor8_Op|bit6|y~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \xor8_Op|bit6|y~combout\,
	combout => \reg8bits_Op|ff6|Q~feeder_combout\);

-- Location: FF_X14_Y13_N7
\reg8bits_Op|ff6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg8bits_Op|ff6|Q~feeder_combout\,
	clrn => \cntrl_Op|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg8bits_Op|ff6|Q~q\);

-- Location: LCCOMB_X13_Y13_N20
\and8_Op|bit6|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \and8_Op|bit6|y~0_combout\ = (!\binC_Op|ff1|Q~q\ & (\FF_Op|Q~q\ & (\binC_Op|ff0|Q~q\ $ (\binC_Op|ff2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binC_Op|ff1|Q~q\,
	datab => \binC_Op|ff0|Q~q\,
	datac => \binC_Op|ff2|Q~q\,
	datad => \FF_Op|Q~q\,
	combout => \and8_Op|bit6|y~0_combout\);

-- Location: LCCOMB_X14_Y13_N16
\xor8_Op|bit6|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \xor8_Op|bit6|y~combout\ = \reg8bits_Op|ff6|Q~q\ $ (\and8_Op|bit6|y~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8bits_Op|ff6|Q~q\,
	datab => \and8_Op|bit6|y~0_combout\,
	combout => \xor8_Op|bit6|y~combout\);

-- Location: LCCOMB_X14_Y13_N18
\reg8bitsFinal_Op|ff6|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg8bitsFinal_Op|ff6|Q~0_combout\ = !\xor8_Op|bit6|y~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor8_Op|bit6|y~combout\,
	combout => \reg8bitsFinal_Op|ff6|Q~0_combout\);

-- Location: FF_X14_Y13_N19
\reg8bitsFinal_Op|ff6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cntrl_Op|nord|y~0clkctrl_outclk\,
	d => \reg8bitsFinal_Op|ff6|Q~0_combout\,
	clrn => \cntrl_Op|nad4|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg8bitsFinal_Op|ff6|Q~q\);

-- Location: LCCOMB_X14_Y13_N22
\reg8bits_Op|ff7|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg8bits_Op|ff7|Q~feeder_combout\ = \xor8_Op|bit7|y~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \xor8_Op|bit7|y~combout\,
	combout => \reg8bits_Op|ff7|Q~feeder_combout\);

-- Location: FF_X14_Y13_N23
\reg8bits_Op|ff7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg8bits_Op|ff7|Q~feeder_combout\,
	clrn => \cntrl_Op|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg8bits_Op|ff7|Q~q\);

-- Location: LCCOMB_X14_Y13_N12
\xor8_Op|bit7|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \xor8_Op|bit7|y~combout\ = \reg8bits_Op|ff7|Q~q\ $ (\and8_Op|bit7|y~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg8bits_Op|ff7|Q~q\,
	datad => \and8_Op|bit7|y~0_combout\,
	combout => \xor8_Op|bit7|y~combout\);

-- Location: LCCOMB_X16_Y13_N22
\reg8bitsFinal_Op|ff7|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg8bitsFinal_Op|ff7|Q~0_combout\ = !\xor8_Op|bit7|y~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \xor8_Op|bit7|y~combout\,
	combout => \reg8bitsFinal_Op|ff7|Q~0_combout\);

-- Location: FF_X16_Y13_N23
\reg8bitsFinal_Op|ff7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cntrl_Op|nord|y~0clkctrl_outclk\,
	d => \reg8bitsFinal_Op|ff7|Q~0_combout\,
	clrn => \cntrl_Op|nad4|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg8bitsFinal_Op|ff7|Q~q\);

-- Location: LCCOMB_X13_Y13_N24
\busy_Op|or2|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \busy_Op|or2|y~0_combout\ = (\cntrl_Op|nord|y~0_combout\) # ((\binC_Op|ff0|Q~q\ & \binC_Op|ff2|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binC_Op|ff0|Q~q\,
	datab => \cntrl_Op|nord|y~0_combout\,
	datad => \binC_Op|ff2|Q~q\,
	combout => \busy_Op|or2|y~0_combout\);

ww_code(0) <= \code[0]~output_o\;

ww_code(1) <= \code[1]~output_o\;

ww_code(2) <= \code[2]~output_o\;

ww_code(3) <= \code[3]~output_o\;

ww_code(4) <= \code[4]~output_o\;

ww_code(5) <= \code[5]~output_o\;

ww_code(6) <= \code[6]~output_o\;

ww_code(7) <= \code[7]~output_o\;

ww_busy_o <= \busy_o~output_o\;
END structure;


