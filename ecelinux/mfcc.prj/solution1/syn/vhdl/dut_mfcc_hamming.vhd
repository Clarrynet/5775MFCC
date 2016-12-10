-- ==============================================================
-- File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2016.2
-- Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
-- 
-- ==============================================================

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity dut_mfcc_hamming_rom is 
    generic(
             dwidth     : integer := 32; 
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


architecture rtl of dut_mfcc_hamming_rom is 

signal addr0_tmp : std_logic_vector(awidth-1 downto 0); 
type mem_array is array (0 to mem_size-1) of std_logic_vector (dwidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101101000111101011100001010", 
    1 => "00111101101001000010000001110001", 
    2 => "00111101101001001111101110011000", 
    3 => "00111101101001100110100110001100", 
    4 => "00111101101010000110100101000000", 
    5 => "00111101101010101111101100111011", 
    6 => "00111101101011100001110111101011", 
    7 => "00111101101100011101000101001110", 
    8 => "00111101101101100001010101100110", 
    9 => "00111101101110101110100010011111", 
    10 => "00111101110000000100101011111001", 
    11 => "00111101110001100011101101101001", 
    12 => "00111101110011001011100011100001", 
    13 => "00111101110100111100001101100001", 
    14 => "00111101110110110101011100111111", 
    15 => "00111101111000110111001101101101", 
    16 => "00111101111011000001110100101010", 
    17 => "00111101111101010100100111111001", 
    18 => "00111101111111101111111100011001", 
    19 => "00111110000001001001101110100110", 
    20 => "00111110000010011111011010101001", 
    21 => "00111110000011111001010111010101", 
    22 => "00111110000101010111001111101011", 
    23 => "00111110000110111000111001001100", 
    24 => "00111110001000011110101000110110", 
    25 => "00111110001010000111111111001100", 
    26 => "00111110001011110101000110101101", 
    27 => "00111110001101100101111111011001", 
    28 => "00111110001111011010010100010010", 
    29 => "00111110010001010010001111110110", 
    30 => "00111110010011001101110010000111", 
    31 => "00111110010101001100011011100111", 
    32 => "00111110010111001110100001010011", 
    33 => "00111110011001010011111000101101", 
    34 => "00111110011011011100010111010110", 
    35 => "00111110011101100111111101001110", 
    36 => "00111110011111110110010101010110", 
    37 => "00111110100001000011111010010110", 
    38 => "00111110100010001101111101111010", 
    39 => "00111110100011011001011010100111", 
    40 => "00111110100100100110001011001100", 
    41 => "00111110100101110100001111101001", 
    42 => "00111110100111000011011101100001", 
    43 => "00111110101000010011111010000001", 
    44 => "00111110101001100101011010101100", 
    45 => "00111110101010110111111111100001", 
    46 => "00111110101100001011101000011111", 
    47 => "00111110101101100000001011001001", 
    48 => "00111110101110110101101100101101", 
    49 => "00111110110000001100000010101101", 
    50 => "00111110110001100011010010011000", 
    51 => "00111110110010111011001011111111", 
    52 => "00111110110100010011110100110010", 
    53 => "00111110110101101101001100110001", 
    54 => "00111110110111000111000100001101", 
    55 => "00111110111000100001100000010110", 
    56 => "00111110111001111100011011111100", 
    57 => "00111110111011010111110110111111", 
    58 => "00111110111100110011100111000001", 
    59 => "00111110111110001111100110110001", 
    60 => "00111110111111101100000000101111", 
    61 => "00111111000000100100001111111110", 
    62 => "00111111000001010010100111011100", 
    63 => "00111111000010000001000001100010", 
    64 => "00111111000010101111011011101000", 
    65 => "00111111000011011101111000010110", 
    66 => "00111111000100001100001111110100", 
    67 => "00111111000100111010100100101010", 
    68 => "00111111000101101000110001101001", 
    69 => "00111111000110010110111001011001", 
    70 => "00111111000111000100110110101001", 
    71 => "00111111000111110010101001011010", 
    72 => "00111111001000100000001111000101", 
    73 => "00111111001001001101100101000000", 
    74 => "00111111001001111010101011001110", 
    75 => "00111111001010100111011100011101", 
    76 => "00111111001011010011111101111101", 
    77 => "00111111001100000000000111110111", 
    78 => "00111111001100101011111010001100", 
    79 => "00111111001101010111010010010010", 
    80 => "00111111001110000010010000001011", 
    81 => "00111111001110101100110001001111", 
    82 => "00111111001111010110110101011101", 
    83 => "00111111010000000000011010001110", 
    84 => "00111111010000101001011100111001", 
    85 => "00111111010001010001111010111000", 
    86 => "00111111010001111001110110110010", 
    87 => "00111111010010100001001000110000", 
    88 => "00111111010011000111110110000000", 
    89 => "00111111010011101101111001010101", 
    90 => "00111111010100010011010010101101", 
    91 => "00111111010100110111111111100001", 
    92 => "00111111010101011011111111110000", 
    93 => "00111111010101111111010000110100", 
    94 => "00111111010110100001110000000100", 
    95 => "00111111010111000011011101100001", 
    96 => "00111111010111100100011001001010", 
    97 => "00111111011000000100100000010111", 
    98 => "00111111011000100011110011001001", 
    99 => "00111111011001000010001100010000", 
    100 => "00111111011001011111110000111011", 
    101 => "00111111011001111100011001010100", 
    102 => "00111111011010011000001010101010", 
    103 => "00111111011010110010111111101100", 
    104 => "00111111011011001100110101110101", 
    105 => "00111111011011100101110010010010", 
    106 => "00111111011011111101101111110101", 
    107 => "00111111011100010100101011110101", 
    108 => "00111111011100101010101011100011", 
    109 => "00111111011100111111100111000110", 
    110 => "00111111011101010011100001000111", 
    111 => "00111111011101100110011001100110", 
    112 => "00111111011101111000010000100011", 
    113 => "00111111011110001001000000101110", 
    114 => "00111111011110011000101100101111", 
    115 => "00111111011110100111010100100101", 
    116 => "00111111011110110100111000010010", 
    117 => "00111111011111000001010010100101", 
    118 => "00111111011111001100101000101110", 
    119 => "00111111011111010110110101011101", 
    120 => "00111111011111011111111011011010", 
    121 => "00111111011111100111110111111110", 
    122 => "00111111011111101110101101110000", 
    123 => "00111111011111110100011100110000", 
    124 => "00111111011111111000111111101111", 
    125 => "00111111011111111100011011111100", 
    126 => "00111111011111111110101110101111", 
    127 to 128=> "00111111011111111111111000001001", 
    129 => "00111111011111111110101110101111", 
    130 => "00111111011111111100011011111100", 
    131 => "00111111011111111000111111101111", 
    132 => "00111111011111110100011100110000", 
    133 => "00111111011111101110101101110000", 
    134 => "00111111011111100111110111111110", 
    135 => "00111111011111011111111011011010", 
    136 => "00111111011111010110110101011101", 
    137 => "00111111011111001100101000101110", 
    138 => "00111111011111000001010010100101", 
    139 => "00111111011110110100111000010010", 
    140 => "00111111011110100111010100100101", 
    141 => "00111111011110011000101100101111", 
    142 => "00111111011110001001000000101110", 
    143 => "00111111011101111000010000100011", 
    144 => "00111111011101100110011001100110", 
    145 => "00111111011101010011100001000111", 
    146 => "00111111011100111111100111000110", 
    147 => "00111111011100101010101011100011", 
    148 => "00111111011100010100101011110101", 
    149 => "00111111011011111101101111110101", 
    150 => "00111111011011100101110010010010", 
    151 => "00111111011011001100110101110101", 
    152 => "00111111011010110010111111101100", 
    153 => "00111111011010011000001010101010", 
    154 => "00111111011001111100011001010100", 
    155 => "00111111011001011111110000111011", 
    156 => "00111111011001000010001100010000", 
    157 => "00111111011000100011110011001001", 
    158 => "00111111011000000100100000010111", 
    159 => "00111111010111100100011001001010", 
    160 => "00111111010111000011011101100001", 
    161 => "00111111010110100001110000000100", 
    162 => "00111111010101111111010000110100", 
    163 => "00111111010101011011111111110000", 
    164 => "00111111010100110111111111100001", 
    165 => "00111111010100010011010010101101", 
    166 => "00111111010011101101111001010101", 
    167 => "00111111010011000111110110000000", 
    168 => "00111111010010100001001000110000", 
    169 => "00111111010001111001110110110010", 
    170 => "00111111010001010001111010111000", 
    171 => "00111111010000101001011100111001", 
    172 => "00111111010000000000011010001110", 
    173 => "00111111001111010110110101011101", 
    174 => "00111111001110101100110001001111", 
    175 => "00111111001110000010010000001011", 
    176 => "00111111001101010111010010010010", 
    177 => "00111111001100101011111010001100", 
    178 => "00111111001100000000000111110111", 
    179 => "00111111001011010011111101111101", 
    180 => "00111111001010100111011100011101", 
    181 => "00111111001001111010101011001110", 
    182 => "00111111001001001101100101000000", 
    183 => "00111111001000100000001111000101", 
    184 => "00111111000111110010101001011010", 
    185 => "00111111000111000100110110101001", 
    186 => "00111111000110010110111001011001", 
    187 => "00111111000101101000110001101001", 
    188 => "00111111000100111010100100101010", 
    189 => "00111111000100001100001111110100", 
    190 => "00111111000011011101111000010110", 
    191 => "00111111000010101111011011101000", 
    192 => "00111111000010000001000001100010", 
    193 => "00111111000001010010100111011100", 
    194 => "00111111000000100100001111111110", 
    195 => "00111110111111101100000000101111", 
    196 => "00111110111110001111100110110001", 
    197 => "00111110111100110011100111000001", 
    198 => "00111110111011010111110110111111", 
    199 => "00111110111001111100011011111100", 
    200 => "00111110111000100001100000010110", 
    201 => "00111110110111000111000100001101", 
    202 => "00111110110101101101001100110001", 
    203 => "00111110110100010011110100110010", 
    204 => "00111110110010111011001011111111", 
    205 => "00111110110001100011010010011000", 
    206 => "00111110110000001100000010101101", 
    207 => "00111110101110110101101100101101", 
    208 => "00111110101101100000001011001001", 
    209 => "00111110101100001011101000011111", 
    210 => "00111110101010110111111111100001", 
    211 => "00111110101001100101011010101100", 
    212 => "00111110101000010011111010000001", 
    213 => "00111110100111000011011101100001", 
    214 => "00111110100101110100001111101001", 
    215 => "00111110100100100110001011001100", 
    216 => "00111110100011011001011010100111", 
    217 => "00111110100010001101111101111010", 
    218 => "00111110100001000011111010010110", 
    219 => "00111110011111110110010101010110", 
    220 => "00111110011101100111111101001110", 
    221 => "00111110011011011100010111010110", 
    222 => "00111110011001010011111000101101", 
    223 => "00111110010111001110100001010011", 
    224 => "00111110010101001100011011100111", 
    225 => "00111110010011001101110010000111", 
    226 => "00111110010001010010001111110110", 
    227 => "00111110001111011010010100010010", 
    228 => "00111110001101100101111111011001", 
    229 => "00111110001011110101000110101101", 
    230 => "00111110001010000111111111001100", 
    231 => "00111110001000011110101000110110", 
    232 => "00111110000110111000111001001100", 
    233 => "00111110000101010111001111101011", 
    234 => "00111110000011111001010111010101", 
    235 => "00111110000010011111011010101001", 
    236 => "00111110000001001001101110100110", 
    237 => "00111101111111101111111100011001", 
    238 => "00111101111101010100100111111001", 
    239 => "00111101111011000001110100101010", 
    240 => "00111101111000110111001101101101", 
    241 => "00111101110110110101011100111111", 
    242 => "00111101110100111100001101100001", 
    243 => "00111101110011001011100011100001", 
    244 => "00111101110001100011101101101001", 
    245 => "00111101110000000100101011111001", 
    246 => "00111101101110101110100010011111", 
    247 => "00111101101101100001010101100110", 
    248 => "00111101101100011101000101001110", 
    249 => "00111101101011100001110111101011", 
    250 => "00111101101010101111101100111011", 
    251 => "00111101101010000110100101000000", 
    252 => "00111101101001100110100110001100", 
    253 => "00111101101001001111101110011000", 
    254 => "00111101101001000010000001110001", 
    255 => "00111101101000111101011100001010" );


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

entity dut_mfcc_hamming is
    generic (
        DataWidth : INTEGER := 32;
        AddressRange : INTEGER := 256;
        AddressWidth : INTEGER := 8);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of dut_mfcc_hamming is
    component dut_mfcc_hamming_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    dut_mfcc_hamming_rom_U :  component dut_mfcc_hamming_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;

