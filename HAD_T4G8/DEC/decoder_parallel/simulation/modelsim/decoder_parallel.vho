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

-- DATE "11/13/2022 23:30:07"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	decoder_parallel IS
    PORT (
	x : IN std_logic_vector(7 DOWNTO 0);
	m : OUT std_logic_vector(3 DOWNTO 0);
	v : OUT std_logic
	);
END decoder_parallel;

-- Design Ports Information
-- m[0]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[1]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[2]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[3]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[4]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[5]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[6]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[7]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF decoder_parallel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_m : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_v : std_logic;
SIGNAL \m[0]~output_o\ : std_logic;
SIGNAL \m[1]~output_o\ : std_logic;
SIGNAL \m[2]~output_o\ : std_logic;
SIGNAL \m[3]~output_o\ : std_logic;
SIGNAL \v~output_o\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \x[6]~input_o\ : std_logic;
SIGNAL \m1|mc2|y~combout\ : std_logic;
SIGNAL \x[7]~input_o\ : std_logic;
SIGNAL \x[3]~input_o\ : std_logic;
SIGNAL \m1|mc3|y~combout\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \x[4]~input_o\ : std_logic;
SIGNAL \m1|mc0|y~combout\ : std_logic;
SIGNAL \x[5]~input_o\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \m1|mc1|y~combout\ : std_logic;
SIGNAL \m1|mvalid|y~0_combout\ : std_logic;
SIGNAL \m3|mc1|y~0_combout\ : std_logic;
SIGNAL \m3|mc3|y~0_combout\ : std_logic;
SIGNAL \m3|mc0|y~0_combout\ : std_logic;
SIGNAL \m3|mc2|y~0_combout\ : std_logic;
SIGNAL \m3|mvalid|y~0_combout\ : std_logic;
SIGNAL \m2|mc2|y~combout\ : std_logic;
SIGNAL \m2|mc3|y~combout\ : std_logic;
SIGNAL \m2|mc0|y~combout\ : std_logic;
SIGNAL \m2|mc1|y~combout\ : std_logic;
SIGNAL \m2|mvalid|y~0_combout\ : std_logic;
SIGNAL \m1|m1|y~0_combout\ : std_logic;
SIGNAL \m1_final|y~0_combout\ : std_logic;
SIGNAL \m2|m1|y~0_combout\ : std_logic;
SIGNAL \m2_final|y~0_combout\ : std_logic;
SIGNAL \m0|xor_z6y6|y~combout\ : std_logic;
SIGNAL \m3|m1|y~0_combout\ : std_logic;
SIGNAL \m3_final|y~combout\ : std_logic;
SIGNAL \m0|popCntOp|hA01|and20|y~combout\ : std_logic;
SIGNAL \m0|xor_z7y7|y~0_combout\ : std_logic;
SIGNAL \m0|popCntOp|fA10|fA0|and20|y~combout\ : std_logic;
SIGNAL \valid|y~0_combout\ : std_logic;
SIGNAL \m0|popCntOp|fA10|hA0|and20|y~combout\ : std_logic;
SIGNAL \m0|popCntOp|fA20|fA10|or20|y~1_combout\ : std_logic;
SIGNAL \m0|popCntOp|fA20|fA10|or20|y~0_combout\ : std_logic;
SIGNAL \m0|popCntOp|fA20|hA0|and20|y~combout\ : std_logic;
SIGNAL \m0|popCntOp|hA02|and20|y~combout\ : std_logic;
SIGNAL \m0|popCntOp|fA20|fA10|or20|y~2_combout\ : std_logic;
SIGNAL \m0|popCntOp|fA11|fA0|and20|y~combout\ : std_logic;
SIGNAL \m0|xor_m3Op|y~combout\ : std_logic;
SIGNAL \valid|ALT_INV_y~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_x <= x;
m <= ww_m;
v <= ww_v;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\valid|ALT_INV_y~0_combout\ <= NOT \valid|y~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X13_Y24_N23
\m[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m0|xor_m3Op|y~combout\,
	devoe => ww_devoe,
	o => \m[0]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\m[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m1_final|y~0_combout\,
	devoe => ww_devoe,
	o => \m[1]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\m[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m2_final|y~0_combout\,
	devoe => ww_devoe,
	o => \m[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\m[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m3_final|y~combout\,
	devoe => ww_devoe,
	o => \m[3]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\v~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \valid|ALT_INV_y~0_combout\,
	devoe => ww_devoe,
	o => \v~output_o\);

-- Location: IOIBUF_X16_Y24_N22
\x[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

-- Location: IOIBUF_X16_Y24_N15
\x[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(6),
	o => \x[6]~input_o\);

-- Location: LCCOMB_X19_Y20_N10
\m1|mc2|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1|mc2|y~combout\ = \x[2]~input_o\ $ (\x[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[2]~input_o\,
	datac => \x[6]~input_o\,
	combout => \m1|mc2|y~combout\);

-- Location: IOIBUF_X16_Y24_N1
\x[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(7),
	o => \x[7]~input_o\);

-- Location: IOIBUF_X23_Y24_N8
\x[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(3),
	o => \x[3]~input_o\);

-- Location: LCCOMB_X19_Y20_N20
\m1|mc3|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1|mc3|y~combout\ = \x[7]~input_o\ $ (\x[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x[7]~input_o\,
	datad => \x[3]~input_o\,
	combout => \m1|mc3|y~combout\);

-- Location: IOIBUF_X18_Y0_N15
\x[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

-- Location: IOIBUF_X34_Y12_N1
\x[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(4),
	o => \x[4]~input_o\);

-- Location: LCCOMB_X19_Y20_N30
\m1|mc0|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1|mc0|y~combout\ = \x[0]~input_o\ $ (\x[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[0]~input_o\,
	datac => \x[4]~input_o\,
	combout => \m1|mc0|y~combout\);

-- Location: IOIBUF_X18_Y24_N22
\x[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(5),
	o => \x[5]~input_o\);

-- Location: IOIBUF_X34_Y12_N8
\x[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

-- Location: LCCOMB_X19_Y20_N0
\m1|mc1|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1|mc1|y~combout\ = \x[5]~input_o\ $ (\x[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x[5]~input_o\,
	datad => \x[1]~input_o\,
	combout => \m1|mc1|y~combout\);

-- Location: LCCOMB_X19_Y20_N2
\m1|mvalid|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1|mvalid|y~0_combout\ = (\m1|mc2|y~combout\ & ((\m1|mc3|y~combout\ & ((\m1|mc0|y~combout\) # (\m1|mc1|y~combout\))) # (!\m1|mc3|y~combout\ & (\m1|mc0|y~combout\ $ (!\m1|mc1|y~combout\))))) # (!\m1|mc2|y~combout\ & ((\m1|mc3|y~combout\ & 
-- (\m1|mc0|y~combout\ $ (!\m1|mc1|y~combout\))) # (!\m1|mc3|y~combout\ & ((!\m1|mc1|y~combout\) # (!\m1|mc0|y~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1|mc2|y~combout\,
	datab => \m1|mc3|y~combout\,
	datac => \m1|mc0|y~combout\,
	datad => \m1|mc1|y~combout\,
	combout => \m1|mvalid|y~0_combout\);

-- Location: LCCOMB_X19_Y20_N4
\m3|mc1|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m3|mc1|y~0_combout\ = \x[2]~input_o\ $ (\x[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x[2]~input_o\,
	datad => \x[3]~input_o\,
	combout => \m3|mc1|y~0_combout\);

-- Location: LCCOMB_X19_Y20_N18
\m3|mc3|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m3|mc3|y~0_combout\ = \x[6]~input_o\ $ (\x[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[6]~input_o\,
	datac => \x[7]~input_o\,
	combout => \m3|mc3|y~0_combout\);

-- Location: LCCOMB_X18_Y20_N8
\m3|mc0|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m3|mc0|y~0_combout\ = \x[0]~input_o\ $ (\x[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x[0]~input_o\,
	datad => \x[1]~input_o\,
	combout => \m3|mc0|y~0_combout\);

-- Location: LCCOMB_X19_Y20_N16
\m3|mc2|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m3|mc2|y~0_combout\ = \x[4]~input_o\ $ (\x[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[4]~input_o\,
	datac => \x[5]~input_o\,
	combout => \m3|mc2|y~0_combout\);

-- Location: LCCOMB_X18_Y20_N18
\m3|mvalid|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m3|mvalid|y~0_combout\ = (\m3|mc1|y~0_combout\ & ((\m3|mc3|y~0_combout\ & ((\m3|mc0|y~0_combout\) # (\m3|mc2|y~0_combout\))) # (!\m3|mc3|y~0_combout\ & (\m3|mc0|y~0_combout\ $ (!\m3|mc2|y~0_combout\))))) # (!\m3|mc1|y~0_combout\ & ((\m3|mc3|y~0_combout\ 
-- & (\m3|mc0|y~0_combout\ $ (!\m3|mc2|y~0_combout\))) # (!\m3|mc3|y~0_combout\ & ((!\m3|mc2|y~0_combout\) # (!\m3|mc0|y~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|mc1|y~0_combout\,
	datab => \m3|mc3|y~0_combout\,
	datac => \m3|mc0|y~0_combout\,
	datad => \m3|mc2|y~0_combout\,
	combout => \m3|mvalid|y~0_combout\);

-- Location: LCCOMB_X19_Y20_N6
\m2|mc2|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \m2|mc2|y~combout\ = \x[4]~input_o\ $ (\x[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[4]~input_o\,
	datac => \x[6]~input_o\,
	combout => \m2|mc2|y~combout\);

-- Location: LCCOMB_X19_Y20_N24
\m2|mc3|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \m2|mc3|y~combout\ = \x[5]~input_o\ $ (\x[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[5]~input_o\,
	datac => \x[7]~input_o\,
	combout => \m2|mc3|y~combout\);

-- Location: LCCOMB_X19_Y20_N26
\m2|mc0|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \m2|mc0|y~combout\ = \x[2]~input_o\ $ (\x[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x[2]~input_o\,
	datad => \x[0]~input_o\,
	combout => \m2|mc0|y~combout\);

-- Location: LCCOMB_X19_Y20_N12
\m2|mc1|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \m2|mc1|y~combout\ = \x[3]~input_o\ $ (\x[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[3]~input_o\,
	datad => \x[1]~input_o\,
	combout => \m2|mc1|y~combout\);

-- Location: LCCOMB_X19_Y20_N8
\m2|mvalid|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m2|mvalid|y~0_combout\ = (\m2|mc2|y~combout\ & ((\m2|mc3|y~combout\ & ((\m2|mc0|y~combout\) # (\m2|mc1|y~combout\))) # (!\m2|mc3|y~combout\ & (\m2|mc0|y~combout\ $ (!\m2|mc1|y~combout\))))) # (!\m2|mc2|y~combout\ & ((\m2|mc3|y~combout\ & 
-- (\m2|mc0|y~combout\ $ (!\m2|mc1|y~combout\))) # (!\m2|mc3|y~combout\ & ((!\m2|mc1|y~combout\) # (!\m2|mc0|y~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|mc2|y~combout\,
	datab => \m2|mc3|y~combout\,
	datac => \m2|mc0|y~combout\,
	datad => \m2|mc1|y~combout\,
	combout => \m2|mvalid|y~0_combout\);

-- Location: LCCOMB_X19_Y20_N28
\m1|m1|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1|m1|y~0_combout\ = (\m1|mc2|y~combout\ & ((\m1|mc3|y~combout\ & ((\m1|mc0|y~combout\) # (\m1|mc1|y~combout\))) # (!\m1|mc3|y~combout\ & (\m1|mc0|y~combout\ & \m1|mc1|y~combout\)))) # (!\m1|mc2|y~combout\ & (\m1|mc3|y~combout\ & (\m1|mc0|y~combout\ & 
-- \m1|mc1|y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1|mc2|y~combout\,
	datab => \m1|mc3|y~combout\,
	datac => \m1|mc0|y~combout\,
	datad => \m1|mc1|y~combout\,
	combout => \m1|m1|y~0_combout\);

-- Location: LCCOMB_X18_Y20_N6
\m1_final|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1_final|y~0_combout\ = (\m1|mvalid|y~0_combout\ & (\m3|mvalid|y~0_combout\ & (\m2|mvalid|y~0_combout\ & \m1|m1|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1|mvalid|y~0_combout\,
	datab => \m3|mvalid|y~0_combout\,
	datac => \m2|mvalid|y~0_combout\,
	datad => \m1|m1|y~0_combout\,
	combout => \m1_final|y~0_combout\);

-- Location: LCCOMB_X19_Y20_N22
\m2|m1|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m2|m1|y~0_combout\ = (\m2|mc2|y~combout\ & ((\m2|mc3|y~combout\ & ((\m2|mc0|y~combout\) # (\m2|mc1|y~combout\))) # (!\m2|mc3|y~combout\ & (\m2|mc0|y~combout\ & \m2|mc1|y~combout\)))) # (!\m2|mc2|y~combout\ & (\m2|mc3|y~combout\ & (\m2|mc0|y~combout\ & 
-- \m2|mc1|y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|mc2|y~combout\,
	datab => \m2|mc3|y~combout\,
	datac => \m2|mc0|y~combout\,
	datad => \m2|mc1|y~combout\,
	combout => \m2|m1|y~0_combout\);

-- Location: LCCOMB_X18_Y20_N4
\m2_final|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m2_final|y~0_combout\ = (\m1|mvalid|y~0_combout\ & (\m3|mvalid|y~0_combout\ & (\m2|mvalid|y~0_combout\ & \m2|m1|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1|mvalid|y~0_combout\,
	datab => \m3|mvalid|y~0_combout\,
	datac => \m2|mvalid|y~0_combout\,
	datad => \m2|m1|y~0_combout\,
	combout => \m2_final|y~0_combout\);

-- Location: LCCOMB_X18_Y20_N16
\m0|xor_z6y6|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \m0|xor_z6y6|y~combout\ = \m1_final|y~0_combout\ $ (\m2_final|y~0_combout\ $ (\x[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1_final|y~0_combout\,
	datac => \m2_final|y~0_combout\,
	datad => \x[1]~input_o\,
	combout => \m0|xor_z6y6|y~combout\);

-- Location: LCCOMB_X19_Y20_N14
\m3|m1|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m3|m1|y~0_combout\ = (\m3|mc0|y~0_combout\ & ((\m3|mc3|y~0_combout\ & ((\m3|mc1|y~0_combout\) # (\m3|mc2|y~0_combout\))) # (!\m3|mc3|y~0_combout\ & (\m3|mc1|y~0_combout\ & \m3|mc2|y~0_combout\)))) # (!\m3|mc0|y~0_combout\ & (\m3|mc3|y~0_combout\ & 
-- (\m3|mc1|y~0_combout\ & \m3|mc2|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|mc0|y~0_combout\,
	datab => \m3|mc3|y~0_combout\,
	datac => \m3|mc1|y~0_combout\,
	datad => \m3|mc2|y~0_combout\,
	combout => \m3|m1|y~0_combout\);

-- Location: LCCOMB_X18_Y20_N2
\m3_final|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \m3_final|y~combout\ = (\m1|mvalid|y~0_combout\ & (\m3|m1|y~0_combout\ & (\m2|mvalid|y~0_combout\ & \m3|mvalid|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1|mvalid|y~0_combout\,
	datab => \m3|m1|y~0_combout\,
	datac => \m2|mvalid|y~0_combout\,
	datad => \m3|mvalid|y~0_combout\,
	combout => \m3_final|y~combout\);

-- Location: LCCOMB_X18_Y20_N22
\m0|popCntOp|hA01|and20|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \m0|popCntOp|hA01|and20|y~combout\ = (\x[3]~input_o\ & (!\m1_final|y~0_combout\ & (\x[2]~input_o\ $ (\m3_final|y~combout\)))) # (!\x[3]~input_o\ & (\m1_final|y~0_combout\ & (\x[2]~input_o\ $ (!\m3_final|y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[2]~input_o\,
	datab => \m3_final|y~combout\,
	datac => \x[3]~input_o\,
	datad => \m1_final|y~0_combout\,
	combout => \m0|popCntOp|hA01|and20|y~combout\);

-- Location: LCCOMB_X18_Y20_N20
\m0|xor_z7y7|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m0|xor_z7y7|y~0_combout\ = \x[0]~input_o\ $ (\m3_final|y~combout\ $ (\m2_final|y~0_combout\ $ (\m1_final|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[0]~input_o\,
	datab => \m3_final|y~combout\,
	datac => \m2_final|y~0_combout\,
	datad => \m1_final|y~0_combout\,
	combout => \m0|xor_z7y7|y~0_combout\);

-- Location: LCCOMB_X18_Y20_N24
\m0|popCntOp|fA10|fA0|and20|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \m0|popCntOp|fA10|fA0|and20|y~combout\ = (\m0|xor_z6y6|y~combout\ & (\m0|popCntOp|hA01|and20|y~combout\ & \m0|xor_z7y7|y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m0|xor_z6y6|y~combout\,
	datac => \m0|popCntOp|hA01|and20|y~combout\,
	datad => \m0|xor_z7y7|y~0_combout\,
	combout => \m0|popCntOp|fA10|fA0|and20|y~combout\);

-- Location: LCCOMB_X16_Y20_N0
\valid|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \valid|y~0_combout\ = ((!\m2|mvalid|y~0_combout\) # (!\m1|mvalid|y~0_combout\)) # (!\m3|mvalid|y~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m3|mvalid|y~0_combout\,
	datac => \m1|mvalid|y~0_combout\,
	datad => \m2|mvalid|y~0_combout\,
	combout => \valid|y~0_combout\);

-- Location: LCCOMB_X18_Y20_N30
\m0|popCntOp|fA10|hA0|and20|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \m0|popCntOp|fA10|hA0|and20|y~combout\ = (\m3|mc1|y~0_combout\ & (!\m3_final|y~combout\ & (\x[0]~input_o\ $ (\x[1]~input_o\)))) # (!\m3|mc1|y~0_combout\ & (\m3_final|y~combout\ & (\x[0]~input_o\ $ (!\x[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|mc1|y~0_combout\,
	datab => \m3_final|y~combout\,
	datac => \x[0]~input_o\,
	datad => \x[1]~input_o\,
	combout => \m0|popCntOp|fA10|hA0|and20|y~combout\);

-- Location: LCCOMB_X18_Y20_N26
\m0|popCntOp|fA20|fA10|or20|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \m0|popCntOp|fA20|fA10|or20|y~1_combout\ = \m0|popCntOp|hA01|and20|y~combout\ $ (\m0|popCntOp|fA10|hA0|and20|y~combout\ $ (((\m0|xor_z7y7|y~0_combout\ & \m0|xor_z6y6|y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m0|popCntOp|hA01|and20|y~combout\,
	datab => \m0|xor_z7y7|y~0_combout\,
	datac => \m0|popCntOp|fA10|hA0|and20|y~combout\,
	datad => \m0|xor_z6y6|y~combout\,
	combout => \m0|popCntOp|fA20|fA10|or20|y~1_combout\);

-- Location: LCCOMB_X18_Y20_N0
\m0|popCntOp|fA20|fA10|or20|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m0|popCntOp|fA20|fA10|or20|y~0_combout\ = (\x[6]~input_o\ & ((\m3|mc2|y~0_combout\ & ((!\m3_final|y~combout\))) # (!\m3|mc2|y~0_combout\ & (\x[7]~input_o\)))) # (!\x[6]~input_o\ & ((\m3|mc2|y~0_combout\ & (\x[7]~input_o\)) # (!\m3|mc2|y~0_combout\ & 
-- ((\m3_final|y~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[7]~input_o\,
	datab => \m3_final|y~combout\,
	datac => \x[6]~input_o\,
	datad => \m3|mc2|y~0_combout\,
	combout => \m0|popCntOp|fA20|fA10|or20|y~0_combout\);

-- Location: LCCOMB_X18_Y20_N14
\m0|popCntOp|fA20|hA0|and20|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \m0|popCntOp|fA20|hA0|and20|y~combout\ = (\m3|mc1|y~0_combout\ & (!\m3|mc0|y~0_combout\ & (\m3|mc3|y~0_combout\ $ (\m3|mc2|y~0_combout\)))) # (!\m3|mc1|y~0_combout\ & (\m3|mc0|y~0_combout\ & (\m3|mc3|y~0_combout\ $ (\m3|mc2|y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|mc1|y~0_combout\,
	datab => \m3|mc3|y~0_combout\,
	datac => \m3|mc0|y~0_combout\,
	datad => \m3|mc2|y~0_combout\,
	combout => \m0|popCntOp|fA20|hA0|and20|y~combout\);

-- Location: LCCOMB_X18_Y20_N10
\m0|popCntOp|hA02|and20|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \m0|popCntOp|hA02|and20|y~combout\ = (\x[5]~input_o\ & (!\m2_final|y~0_combout\ & (\m3_final|y~combout\ $ (\x[4]~input_o\)))) # (!\x[5]~input_o\ & (\m2_final|y~0_combout\ & (\m3_final|y~combout\ $ (!\x[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[5]~input_o\,
	datab => \m3_final|y~combout\,
	datac => \m2_final|y~0_combout\,
	datad => \x[4]~input_o\,
	combout => \m0|popCntOp|hA02|and20|y~combout\);

-- Location: LCCOMB_X18_Y20_N28
\m0|popCntOp|fA20|fA10|or20|y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \m0|popCntOp|fA20|fA10|or20|y~2_combout\ = (\m0|popCntOp|fA20|fA10|or20|y~1_combout\ & ((\m0|popCntOp|fA20|hA0|and20|y~combout\) # (\m0|popCntOp|fA20|fA10|or20|y~0_combout\ $ (\m0|popCntOp|hA02|and20|y~combout\)))) # 
-- (!\m0|popCntOp|fA20|fA10|or20|y~1_combout\ & (\m0|popCntOp|fA20|hA0|and20|y~combout\ & (\m0|popCntOp|fA20|fA10|or20|y~0_combout\ $ (\m0|popCntOp|hA02|and20|y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m0|popCntOp|fA20|fA10|or20|y~1_combout\,
	datab => \m0|popCntOp|fA20|fA10|or20|y~0_combout\,
	datac => \m0|popCntOp|fA20|hA0|and20|y~combout\,
	datad => \m0|popCntOp|hA02|and20|y~combout\,
	combout => \m0|popCntOp|fA20|fA10|or20|y~2_combout\);

-- Location: LCCOMB_X18_Y20_N12
\m0|popCntOp|fA11|fA0|and20|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \m0|popCntOp|fA11|fA0|and20|y~combout\ = (\x[7]~input_o\ & (\m0|popCntOp|hA02|and20|y~combout\ & (\m3_final|y~combout\ $ (\x[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[7]~input_o\,
	datab => \m3_final|y~combout\,
	datac => \x[6]~input_o\,
	datad => \m0|popCntOp|hA02|and20|y~combout\,
	combout => \m0|popCntOp|fA11|fA0|and20|y~combout\);

-- Location: LCCOMB_X16_Y20_N2
\m0|xor_m3Op|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \m0|xor_m3Op|y~combout\ = (!\valid|y~0_combout\ & (\m0|popCntOp|fA20|fA10|or20|y~2_combout\ $ (((\m0|popCntOp|fA10|fA0|and20|y~combout\) # (\m0|popCntOp|fA11|fA0|and20|y~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m0|popCntOp|fA10|fA0|and20|y~combout\,
	datab => \valid|y~0_combout\,
	datac => \m0|popCntOp|fA20|fA10|or20|y~2_combout\,
	datad => \m0|popCntOp|fA11|fA0|and20|y~combout\,
	combout => \m0|xor_m3Op|y~combout\);

ww_m(0) <= \m[0]~output_o\;

ww_m(1) <= \m[1]~output_o\;

ww_m(2) <= \m[2]~output_o\;

ww_m(3) <= \m[3]~output_o\;

ww_v <= \v~output_o\;
END structure;


