-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "12/03/2019 17:21:52"

-- 
-- Device: Altera EP4CE30F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	\contador-bin-sin\ IS
    PORT (
	RCON : OUT std_logic;
	LDN : IN std_logic;
	CLK : IN std_logic;
	DNUP : IN std_logic;
	GN : IN std_logic;
	MXMN : OUT std_logic;
	QA : OUT std_logic;
	QB : OUT std_logic;
	QD : OUT std_logic;
	QC : OUT std_logic
	);
END \contador-bin-sin\;

-- Design Ports Information
-- RCON	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MXMN	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QA	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QB	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QD	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QC	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DNUP	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GN	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LDN	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF \contador-bin-sin\ IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_RCON : std_logic;
SIGNAL ww_LDN : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_DNUP : std_logic;
SIGNAL ww_GN : std_logic;
SIGNAL ww_MXMN : std_logic;
SIGNAL ww_QA : std_logic;
SIGNAL ww_QB : std_logic;
SIGNAL ww_QD : std_logic;
SIGNAL ww_QC : std_logic;
SIGNAL \LDN~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \RCON~output_o\ : std_logic;
SIGNAL \MXMN~output_o\ : std_logic;
SIGNAL \QA~output_o\ : std_logic;
SIGNAL \QB~output_o\ : std_logic;
SIGNAL \QD~output_o\ : std_logic;
SIGNAL \QC~output_o\ : std_logic;
SIGNAL \DNUP~input_o\ : std_logic;
SIGNAL \GN~input_o\ : std_logic;
SIGNAL \inst|sub|56~0_combout\ : std_logic;
SIGNAL \LDN~input_o\ : std_logic;
SIGNAL \LDN~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|sub|16~q\ : std_logic;
SIGNAL \inst|sub|17~0_combout\ : std_logic;
SIGNAL \inst|sub|17~q\ : std_logic;
SIGNAL \inst|sub|74~0_combout\ : std_logic;
SIGNAL \inst|sub|18~0_combout\ : std_logic;
SIGNAL \inst|sub|18~q\ : std_logic;
SIGNAL \inst|sub|19~0_combout\ : std_logic;
SIGNAL \inst|sub|19~q\ : std_logic;
SIGNAL \inst|sub|113~0_combout\ : std_logic;
SIGNAL \inst|sub|ALT_INV_113~0_combout\ : std_logic;
SIGNAL \inst|sub|ALT_INV_18~q\ : std_logic;
SIGNAL \inst|sub|ALT_INV_17~q\ : std_logic;

BEGIN

RCON <= ww_RCON;
ww_LDN <= LDN;
ww_CLK <= CLK;
ww_DNUP <= DNUP;
ww_GN <= GN;
MXMN <= ww_MXMN;
QA <= ww_QA;
QB <= ww_QB;
QD <= ww_QD;
QC <= ww_QC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\LDN~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \LDN~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\inst|sub|ALT_INV_113~0_combout\ <= NOT \inst|sub|113~0_combout\;
\inst|sub|ALT_INV_18~q\ <= NOT \inst|sub|18~q\;
\inst|sub|ALT_INV_17~q\ <= NOT \inst|sub|17~q\;

-- Location: IOIBUF_X0_Y21_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOOBUF_X0_Y37_N23
\RCON~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|sub|ALT_INV_113~0_combout\,
	devoe => ww_devoe,
	o => \RCON~output_o\);

-- Location: IOOBUF_X0_Y37_N16
\MXMN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|sub|113~0_combout\,
	devoe => ww_devoe,
	o => \MXMN~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\QA~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|sub|16~q\,
	devoe => ww_devoe,
	o => \QA~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\QB~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|sub|ALT_INV_17~q\,
	devoe => ww_devoe,
	o => \QB~output_o\);

-- Location: IOOBUF_X0_Y36_N2
\QD~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|sub|19~q\,
	devoe => ww_devoe,
	o => \QD~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\QC~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|sub|ALT_INV_18~q\,
	devoe => ww_devoe,
	o => \QC~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\DNUP~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DNUP,
	o => \DNUP~input_o\);

-- Location: IOIBUF_X0_Y35_N8
\GN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GN,
	o => \GN~input_o\);

-- Location: LCCOMB_X1_Y35_N6
\inst|sub|56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sub|56~0_combout\ = \GN~input_o\ $ (!\inst|sub|16~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GN~input_o\,
	datac => \inst|sub|16~q\,
	combout => \inst|sub|56~0_combout\);

-- Location: IOIBUF_X0_Y21_N15
\LDN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LDN,
	o => \LDN~input_o\);

-- Location: CLKCTRL_G4
\LDN~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \LDN~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \LDN~inputclkctrl_outclk\);

-- Location: FF_X1_Y35_N7
\inst|sub|16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|sub|56~0_combout\,
	clrn => \LDN~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sub|16~q\);

-- Location: LCCOMB_X1_Y35_N8
\inst|sub|17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sub|17~0_combout\ = \inst|sub|17~q\ $ (((!\GN~input_o\ & (\DNUP~input_o\ $ (\inst|sub|16~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DNUP~input_o\,
	datab => \GN~input_o\,
	datac => \inst|sub|17~q\,
	datad => \inst|sub|16~q\,
	combout => \inst|sub|17~0_combout\);

-- Location: FF_X1_Y35_N9
\inst|sub|17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|sub|17~0_combout\,
	clrn => \LDN~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sub|17~q\);

-- Location: LCCOMB_X1_Y35_N12
\inst|sub|74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sub|74~0_combout\ = (!\GN~input_o\ & ((\DNUP~input_o\ & (\inst|sub|17~q\ & !\inst|sub|16~q\)) # (!\DNUP~input_o\ & (!\inst|sub|17~q\ & \inst|sub|16~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DNUP~input_o\,
	datab => \GN~input_o\,
	datac => \inst|sub|17~q\,
	datad => \inst|sub|16~q\,
	combout => \inst|sub|74~0_combout\);

-- Location: LCCOMB_X1_Y35_N30
\inst|sub|18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sub|18~0_combout\ = \inst|sub|18~q\ $ (\inst|sub|74~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|sub|18~q\,
	datad => \inst|sub|74~0_combout\,
	combout => \inst|sub|18~0_combout\);

-- Location: FF_X1_Y35_N31
\inst|sub|18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|sub|18~0_combout\,
	clrn => \LDN~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sub|18~q\);

-- Location: LCCOMB_X1_Y35_N24
\inst|sub|19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sub|19~0_combout\ = \inst|sub|19~q\ $ (((\inst|sub|74~0_combout\ & (\inst|sub|18~q\ $ (!\DNUP~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sub|18~q\,
	datab => \DNUP~input_o\,
	datac => \inst|sub|19~q\,
	datad => \inst|sub|74~0_combout\,
	combout => \inst|sub|19~0_combout\);

-- Location: FF_X1_Y35_N25
\inst|sub|19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|sub|19~0_combout\,
	clrn => \LDN~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sub|19~q\);

-- Location: LCCOMB_X1_Y35_N10
\inst|sub|113~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sub|113~0_combout\ = (\inst|sub|74~0_combout\ & ((\DNUP~input_o\ & (\inst|sub|18~q\ & !\inst|sub|19~q\)) # (!\DNUP~input_o\ & (!\inst|sub|18~q\ & \inst|sub|19~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DNUP~input_o\,
	datab => \inst|sub|74~0_combout\,
	datac => \inst|sub|18~q\,
	datad => \inst|sub|19~q\,
	combout => \inst|sub|113~0_combout\);

ww_RCON <= \RCON~output_o\;

ww_MXMN <= \MXMN~output_o\;

ww_QA <= \QA~output_o\;

ww_QB <= \QB~output_o\;

ww_QD <= \QD~output_o\;

ww_QC <= \QC~output_o\;
END structure;


