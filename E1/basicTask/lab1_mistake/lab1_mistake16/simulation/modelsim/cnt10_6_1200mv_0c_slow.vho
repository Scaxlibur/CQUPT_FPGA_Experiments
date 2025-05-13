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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "11/14/2019 09:01:42"

-- 
-- Device: Altera EP3C5F256C6 Package FBGA256
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
-- q[3]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[0]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \inst2|7~0_combout\ : std_logic;
SIGNAL \inst2|7~feeder_combout\ : std_logic;
SIGNAL \inst2|7~q\ : std_logic;
SIGNAL \inst2|20~combout\ : std_logic;
SIGNAL \inst2|6~0_combout\ : std_logic;
SIGNAL \inst2|6~q\ : std_logic;
SIGNAL \inst2|5~0_combout\ : std_logic;
SIGNAL \inst2|5~q\ : std_logic;
SIGNAL \inst2|3~0_combout\ : std_logic;
SIGNAL \inst2|3~feeder_combout\ : std_logic;
SIGNAL \inst2|3~q\ : std_logic;
SIGNAL \ALT_INV_clk~input_o\ : std_logic;
SIGNAL \inst2|ALT_INV_7~q\ : std_logic;
SIGNAL \inst2|ALT_INV_6~q\ : std_logic;

BEGIN

q <= ww_q;
ww_clk <= clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;
\inst2|ALT_INV_7~q\ <= NOT \inst2|7~q\;
\inst2|ALT_INV_6~q\ <= NOT \inst2|6~q\;

-- Location: IOOBUF_X21_Y24_N2
\q[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|3~q\,
	devoe => ww_devoe,
	o => \q[3]~output_o\);

-- Location: IOOBUF_X21_Y24_N9
\q[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|5~q\,
	devoe => ww_devoe,
	o => \q[2]~output_o\);

-- Location: IOOBUF_X23_Y24_N23
\q[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|6~q\,
	devoe => ww_devoe,
	o => \q[1]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\q[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|7~q\,
	devoe => ww_devoe,
	o => \q[0]~output_o\);

-- Location: IOIBUF_X23_Y24_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LCCOMB_X23_Y23_N14
\inst2|7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|7~0_combout\ = !\inst2|7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|7~q\,
	combout => \inst2|7~0_combout\);

-- Location: LCCOMB_X23_Y23_N18
\inst2|7~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|7~feeder_combout\ = \inst2|7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|7~0_combout\,
	combout => \inst2|7~feeder_combout\);

-- Location: FF_X23_Y23_N19
\inst2|7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \inst2|7~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|7~q\);

-- Location: LCCOMB_X23_Y23_N30
\inst2|20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|20~combout\ = LCELL((\inst2|3~q\) # (!\inst2|7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|3~q\,
	datad => \inst2|7~q\,
	combout => \inst2|20~combout\);

-- Location: LCCOMB_X23_Y23_N16
\inst2|6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|6~0_combout\ = !\inst2|6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|6~q\,
	combout => \inst2|6~0_combout\);

-- Location: FF_X23_Y23_N31
\inst2|6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|20~combout\,
	asdata => \inst2|6~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|6~q\);

-- Location: LCCOMB_X22_Y23_N22
\inst2|5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|5~0_combout\ = !\inst2|5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|5~q\,
	combout => \inst2|5~0_combout\);

-- Location: FF_X22_Y23_N23
\inst2|5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_6~q\,
	d => \inst2|5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|5~q\);

-- Location: LCCOMB_X22_Y23_N28
\inst2|3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|3~0_combout\ = (\inst2|6~q\ & (\inst2|5~q\ & !\inst2|3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|6~q\,
	datac => \inst2|5~q\,
	datad => \inst2|3~q\,
	combout => \inst2|3~0_combout\);

-- Location: LCCOMB_X22_Y23_N6
\inst2|3~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|3~feeder_combout\ = \inst2|3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|3~0_combout\,
	combout => \inst2|3~feeder_combout\);

-- Location: FF_X22_Y23_N7
\inst2|3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_7~q\,
	d => \inst2|3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|3~q\);

ww_q(3) <= \q[3]~output_o\;

ww_q(2) <= \q[2]~output_o\;

ww_q(1) <= \q[1]~output_o\;

ww_q(0) <= \q[0]~output_o\;
END structure;


