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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/12/2022 17:57:06"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          encoder_serial
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY encoder_serial_vhd_vec_tst IS
END encoder_serial_vhd_vec_tst;
ARCHITECTURE encoder_serial_arch OF encoder_serial_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL andAux : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL code : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL mIn : STD_LOGIC;
SIGNAL nGRst : STD_LOGIC;
SIGNAL xorAux : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT encoder_serial
	PORT (
	andAux : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	clk : IN STD_LOGIC;
	code : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	mIn : IN STD_LOGIC;
	nGRst : IN STD_LOGIC;
	xorAux : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : encoder_serial
	PORT MAP (
-- list connections between master ports and signals
	andAux => andAux,
	clk => clk,
	code => code,
	mIn => mIn,
	nGRst => nGRst,
	xorAux => xorAux
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 25000 ps;
	clk <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- mIn
t_prcs_mIn: PROCESS
BEGIN
	mIn <= '0';
	WAIT FOR 20000 ps;
	mIn <= '1';
	WAIT FOR 20000 ps;
	mIn <= '0';
	WAIT FOR 20000 ps;
	mIn <= '1';
	WAIT FOR 30000 ps;
	mIn <= '0';
	WAIT FOR 180000 ps;
	mIn <= '1';
	WAIT FOR 40000 ps;
	mIn <= '0';
	WAIT FOR 60000 ps;
	mIn <= '1';
	WAIT FOR 30000 ps;
	mIn <= '0';
WAIT;
END PROCESS t_prcs_mIn;

-- nGRst
t_prcs_nGRst: PROCESS
BEGIN
	nGRst <= '1';
WAIT;
END PROCESS t_prcs_nGRst;
END encoder_serial_arch;
