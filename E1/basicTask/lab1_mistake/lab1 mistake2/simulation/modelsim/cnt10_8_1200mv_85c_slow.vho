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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "05/13/2025 15:27:16"

-- 
-- Device: Altera EP3C16Q240C8 Package PQFP240
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cnt10 IS
    PORT (
	q : OUT std_logic_vector(3 DOWNTO 0);
	clk : IN std_logic
	);
END cnt10;

-- Design Ports Information
-- q[3]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[0]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cnt10 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_q : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL \q[3]~output_o\ : std_logic;
SIGNAL \q[2]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \inst|7~0_combout\ : std_logic;
SIGNAL \inst|7~feeder_combout\ : std_logic;
SIGNAL \inst|7~q\ : std_logic;
SIGNAL \inst|20~combout\ : std_logic;
SIGNAL \inst|6~0_combout\ : std_logic;
SIGNAL \inst|6~q\ : std_logic;
SIGNAL \inst|5~0_combout\ : std_logic;
SIGNAL \inst|5~q\ : std_logic;
SIGNAL \inst|3~0_combout\ : std_logic;
SIGNAL \inst|3~q\ : std_logic;
SIGNAL \ALT_INV_clk~input_o\ : std_logic;
SIGNAL \inst|ALT_INV_7~q\ : std_logic;
SIGNAL \inst|ALT_INV_6~q\ : std_logic;

BEGIN

q <= ww_q;
ww_clk <= clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;
\inst|ALT_INV_7~q\ <= NOT \inst|7~q\;
\inst|ALT_INV_6~q\ <= NOT \inst|6~q\;

-- Location: IOOBUF_X5_Y0_N2
\q[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|3~q\,
	devoe => ww_devoe,
	o => \q[3]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\q[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|5~q\,
	devoe => ww_devoe,
	o => \q[2]~output_o\);

-- Location: IOOBUF_X7_Y0_N30
\q[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|6~q\,
	devoe => ww_devoe,
	o => \q[1]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\q[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|7~q\,
	devoe => ww_devoe,
	o => \q[0]~output_o\);

-- Location: IOIBUF_X5_Y0_N22
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LCCOMB_X6_Y1_N22
\inst|7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|7~0_combout\ = !\inst|7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|7~q\,
	combout => \inst|7~0_combout\);

-- Location: LCCOMB_X6_Y1_N6
\inst|7~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|7~feeder_combout\ = \inst|7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|7~0_combout\,
	combout => \inst|7~feeder_combout\);

-- Location: FF_X6_Y1_N7
\inst|7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \inst|7~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|7~q\);

-- Location: LCCOMB_X6_Y1_N28
\inst|20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|20~combout\ = LCELL((\inst|3~q\) # (!\inst|7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|7~q\,
	datad => \inst|3~q\,
	combout => \inst|20~combout\);

-- Location: LCCOMB_X6_Y1_N16
\inst|6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|6~0_combout\ = !\inst|6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|6~q\,
	combout => \inst|6~0_combout\);

-- Location: FF_X6_Y1_N29
\inst|6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|20~combout\,
	asdata => \inst|6~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|6~q\);

-- Location: LCCOMB_X7_Y1_N28
\inst|5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|5~0_combout\ = !\inst|5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|5~q\,
	combout => \inst|5~0_combout\);

-- Location: FF_X7_Y1_N29
\inst|5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_6~q\,
	d => \inst|5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|5~q\);

-- Location: LCCOMB_X7_Y1_N6
\inst|3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|3~0_combout\ = (\inst|6~q\ & (!\inst|3~q\ & \inst|5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|6~q\,
	datac => \inst|3~q\,
	datad => \inst|5~q\,
	combout => \inst|3~0_combout\);

-- Location: FF_X7_Y1_N7
\inst|3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_7~q\,
	d => \inst|3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|3~q\);

ww_q(3) <= \q[3]~output_o\;

ww_q(2) <= \q[2]~output_o\;

ww_q(1) <= \q[1]~output_o\;

ww_q(0) <= \q[0]~output_o\;
END structure;


