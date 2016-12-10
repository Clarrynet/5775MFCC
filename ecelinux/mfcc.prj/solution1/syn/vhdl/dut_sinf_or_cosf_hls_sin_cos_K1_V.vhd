-- ==============================================================
-- File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2016.2
-- Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
-- 
-- ==============================================================

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity dut_sinf_or_cosf_hls_sin_cos_K1_V_rom is 
    generic(
             dwidth     : integer := 23; 
             awidth     : integer := 8; 
             mem_size    : integer := 256
    ); 
    port (
          addr0      : in std_logic_vector(awidth-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(dwidth-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of dut_sinf_or_cosf_hls_sin_cos_K1_V_rom is 

signal addr0_tmp : std_logic_vector(awidth-1 downto 0); 
type mem_array is array (0 to mem_size-1) of std_logic_vector (dwidth-1 downto 0); 
signal mem : mem_array := (
    0 => "11111111111111111111111", 1 => "11111111011000100001001", 
    2 => "11111110110001000010110", 3 => "11111110001001100100101", 
    4 => "11111101100010000110010", 5 => "11111100111010101000111", 
    6 => "11111100010011001011101", 7 => "11111011101011101111001", 
    8 => "11111011000100010010110", 9 => "11111010011100110111101", 
    10 => "11111001110101011101011", 11 => "11111001001110000100001", 
    12 => "11111000100110101011111", 13 => "11110111111111010100110", 
    14 => "11110111010111111110101", 15 => "11110110110000101010000", 
    16 => "11110110001001010110111", 17 => "11110101100010000101011", 
    18 => "11110100111010110100111", 19 => "11110100010011100110110", 
    20 => "11110011101100011010001", 21 => "11110011000101001111011", 
    22 => "11110010011110000110110", 23 => "11110001110111000000011", 
    24 => "11110001001111111011111", 25 => "11110000101000111001101", 
    26 => "11110000000001111001111", 27 => "11101111011010111100101", 
    28 => "11101110110100000001110", 29 => "11101110001101001001110", 
    30 => "11101101100110010100011", 31 => "11101100111111100010000", 
    32 => "11101100011000110010100", 33 => "11101011110010000101101", 
    34 => "11101011001011011100100", 35 => "11101010100100110110011", 
    36 => "11101001111110010011001", 37 => "11101001010111110011111", 
    38 => "11101000110001010111100", 39 => "11101000001010111111100", 
    40 => "11100111100100101010011", 41 => "11100110111110011001100", 
    42 => "11100110011000001100011", 43 => "11100101110010000011000", 
    44 => "11100101001011111101110", 45 => "11100100100101111100111", 
    46 => "11100100000000000000001", 47 => "11100011011010000111101", 
    48 => "11100010110100010011101", 49 => "11100010001110100100010", 
    50 => "11100001101000111001011", 51 => "11100001000011010010101", 
    52 => "11100000011101110001101", 53 => "11011111111000010100100", 
    54 => "11011111010010111101001", 55 => "11011110101101101010000", 
    56 => "11011110001000011100111", 57 => "11011101100011010100101", 
    58 => "11011100111110010001100", 59 => "11011100011001010011110", 
    60 => "11011011110100011011110", 61 => "11011011001111101001100", 
    62 => "11011010101010111100101", 63 => "11011010000110010101001", 
    64 => "11011001100001110100011", 65 => "11011000111101011000101", 
    66 => "11011000011001000011011", 67 => "11010111110100110100011", 
    68 => "11010111010000101011000", 69 => "11010110101100101000101", 
    70 => "11010110001000101011111", 71 => "11010101100100110110010", 
    72 => "11010101000001000110110", 73 => "11010100011101011110001", 
    74 => "11010011111001111100011", 75 => "11010011010110100001000", 
    76 => "11010010110011001100111", 77 => "11010010001111111111101", 
    78 => "11010001101100111001000", 79 => "11010001001001111010001", 
    80 => "11010000100111000010000", 81 => "11010000000100010001011", 
    82 => "11001111100001101000000", 83 => "11001110111111000110010", 
    84 => "11001110011100101100001", 85 => "11001101111010011001101", 
    86 => "11001101011000001110101", 87 => "11001100110110001011101", 
    88 => "11001100010100010000111", 89 => "11001011110010011101011", 
    90 => "11001011010000110010100", 91 => "11001010101111001111100", 
    92 => "11001010001101110100111", 93 => "11001001101100100010000", 
    94 => "11001001001011011000010", 95 => "11001000101010010110101", 
    96 => "11001000001001011101101", 97 => "11000111101000101100110", 
    98 => "11000111001000000101001", 99 => "11000110100111100110010", 
    100 => "11000110000111001111110", 101 => "11000101100111000010101", 
    102 => "11000101000110111110000", 103 => "11000100100111000011010", 
    104 => "11000100000111010001011", 105 => "11000011100111101000101", 
    106 => "11000011001000001001000", 107 => "11000010101000110010111", 
    108 => "11000010001001100110010", 109 => "11000001101010100011011", 
    110 => "11000001001011101001110", 111 => "11000000101100111010001", 
    112 => "11000000001110010100001", 113 => "10111111101111110111101", 
    114 => "10111111010001100101101", 115 => "10111110110011011101010", 
    116 => "10111110010101011111001", 117 => "10111101110111101010111", 
    118 => "10111101011010000000111", 119 => "10111100111100100001011", 
    120 => "10111100011111001011111", 121 => "10111100000010000000111", 
    122 => "10111011100101000000111", 123 => "10111011001000001011000", 
    124 => "10111010101011011111101", 125 => "10111010001110111110101", 
    126 => "10111001110010101001100", 127 => "10111001010110011110011", 
    128 => "00000000000000000000010", 129 => "11111111110101101010110", 
    130 => "11111111101011010101000", 131 => "11111111100000111111100", 
    132 => "11111111010110101010000", 133 => "11111111001100010100111", 
    134 => "11111111000001111111011", 135 => "11111110110111101010011", 
    136 => "11111110101101010101100", 137 => "11111110100011000000011", 
    138 => "11111110011000101011111", 139 => "11111110001110010111010", 
    140 => "11111110000100000010110", 141 => "11111101111001101110010", 
    142 => "11111101101111011010011", 143 => "11111101100101000110011", 
    144 => "11111101011010110010110", 145 => "11111101010000011111011", 
    146 => "11111101000110001100011", 147 => "11111100111011111001100", 
    148 => "11111100110001100110110", 149 => "11111100100111010100011", 
    150 => "11111100011101000010001", 151 => "11111100010010110000100", 
    152 => "11111100001000011111010", 153 => "11111011111110001110000", 
    154 => "11111011110011111101011", 155 => "11111011101001101101011", 
    156 => "11111011011111011101101", 157 => "11111011010101001110000", 
    158 => "11111011001010111111011", 159 => "11111011000000110000110", 
    160 => "11111010110110100010110", 161 => "11111010101100010100111", 
    162 => "11111010100010000111110", 163 => "11111010010111111011010", 
    164 => "11111010001101101111010", 165 => "11111010000011100011100", 
    166 => "11111001111001011000011", 167 => "11111001101111001101111", 
    168 => "11111001100101000100000", 169 => "11111001011010111010111", 
    170 => "11111001010000110010001", 171 => "11111001000110101010010", 
    172 => "11111000111100100011000", 173 => "11111000110010011100001", 
    174 => "11111000101000010110000", 175 => "11111000011110010000111", 
    176 => "11111000010100001100001", 177 => "11111000001010001000011", 
    178 => "11111000000000000100111", 179 => "11110111110110000010010", 
    180 => "11110111101100000000101", 181 => "11110111100001111111101", 
    182 => "11110111010111111111001", 183 => "11110111001101111111110", 
    184 => "11110111000100000001100", 185 => "11110110111010000011110", 
    186 => "11110110110000000110010", 187 => "11110110100110001010010", 
    188 => "11110110011100001111011", 189 => "11110110010010010100101", 
    190 => "11110110001000011011011", 191 => "11110101111110100010111", 
    192 => "11110101110100101011001", 193 => "11110101101010110100110", 
    194 => "11110101100000111111000", 195 => "11110101010111001010010", 
    196 => "11110101001101010110010", 197 => "11110101000011100011100", 
    198 => "11110100111001110001111", 199 => "11110100110000000001000", 
    200 => "11110100100110010001101", 201 => "11110100011100100010011", 
    202 => "11110100010010110101000", 203 => "11110100001001001000111", 
    204 => "11110011111111011101100", 205 => "11110011110101110010100", 
    206 => "11110011101100001001011", 207 => "11110011100010100001010", 
    208 => "11110011011000111010100", 209 => "11110011001111010101000", 
    210 => "11110011000101110000100", 211 => "11110010111100001100101", 
    212 => "11110010110010101010100", 213 => "11110010101001001001111", 
    214 => "11110010011111101010010", 215 => "11110010010110001011100", 
    216 => "11110010001100101110010", 217 => "11110010000011010010000", 
    218 => "11110001111001110111101", 219 => "11110001110000011110001", 
    220 => "11110001100111000110011", 221 => "11110001011101101111011", 
    222 => "11110001010100011001111", 223 => "11110001001011000101110", 
    224 => "11110001000001110011001", 225 => "11110000111000100001111", 
    226 => "11110000101111010001111", 227 => "11110000100110000011101", 
    228 => "11110000011100110110010", 229 => "11110000010011101010101", 
    230 => "11110000001010100000001", 231 => "11110000000001010111100", 
    232 => "11101111111000010000010", 233 => "11101111101111001010100", 
    234 => "11101111100110000101110", 235 => "11101111011101000011000", 
    236 => "11101111010100000001100", 237 => "11101111001011000001111", 
    238 => "11101111000010000011100", 239 => "11101110111001000111001", 
    240 => "11101110110000001011111", 241 => "11101110100111010010100", 
    242 => "11101110011110011010011", 243 => "11101110010101100100001", 
    244 => "11101110001100101111011", 245 => "11101110000011111011110", 
    246 => "11101101111011001010011", 247 => "11101101110010011010101", 
    248 => "11101101101001101100110", 249 => "11101101100001000000001", 
    250 => "11101101011000010101100", 251 => "11101101001111101100011", 
    252 => "11101101000111000100111", 253 => "11101100111110011111101", 
    254 => "11101100110101111011100", 255 => "11101100101101011001011" );

attribute syn_rom_style : string;
attribute syn_rom_style of mem : signal is "select_rom";
attribute ROM_STYLE : string;
attribute ROM_STYLE of mem : signal is "distributed";

attribute EQUIVALENT_REGISTER_REMOVAL : string;
begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;


Library IEEE;
use IEEE.std_logic_1164.all;

entity dut_sinf_or_cosf_hls_sin_cos_K1_V is
    generic (
        DataWidth : INTEGER := 23;
        AddressRange : INTEGER := 256;
        AddressWidth : INTEGER := 8);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of dut_sinf_or_cosf_hls_sin_cos_K1_V is
    component dut_sinf_or_cosf_hls_sin_cos_K1_V_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    dut_sinf_or_cosf_hls_sin_cos_K1_V_rom_U :  component dut_sinf_or_cosf_hls_sin_cos_K1_V_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


