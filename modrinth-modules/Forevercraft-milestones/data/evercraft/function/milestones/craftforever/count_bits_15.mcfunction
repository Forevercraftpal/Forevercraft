# Count set bits in a 15-bit field
# Input: #ms_bitfield ec.temp (the bitfield value)
# Output: #ms_bit_count ec.temp (number of 1-bits)
# Clobbers #ms_bit_tmp ec.temp

scoreboard players set #ms_bit_count ec.temp 0

# Bit 0
scoreboard players operation #ms_bit_tmp ec.temp = #ms_bitfield ec.temp
scoreboard players operation #ms_bit_tmp ec.temp %= #2 ec.const
scoreboard players operation #ms_bit_count ec.temp += #ms_bit_tmp ec.temp
scoreboard players operation #ms_bitfield ec.temp /= #2 ec.const

# Bit 1
scoreboard players operation #ms_bit_tmp ec.temp = #ms_bitfield ec.temp
scoreboard players operation #ms_bit_tmp ec.temp %= #2 ec.const
scoreboard players operation #ms_bit_count ec.temp += #ms_bit_tmp ec.temp
scoreboard players operation #ms_bitfield ec.temp /= #2 ec.const

# Bit 2
scoreboard players operation #ms_bit_tmp ec.temp = #ms_bitfield ec.temp
scoreboard players operation #ms_bit_tmp ec.temp %= #2 ec.const
scoreboard players operation #ms_bit_count ec.temp += #ms_bit_tmp ec.temp
scoreboard players operation #ms_bitfield ec.temp /= #2 ec.const

# Bit 3
scoreboard players operation #ms_bit_tmp ec.temp = #ms_bitfield ec.temp
scoreboard players operation #ms_bit_tmp ec.temp %= #2 ec.const
scoreboard players operation #ms_bit_count ec.temp += #ms_bit_tmp ec.temp
scoreboard players operation #ms_bitfield ec.temp /= #2 ec.const

# Bit 4
scoreboard players operation #ms_bit_tmp ec.temp = #ms_bitfield ec.temp
scoreboard players operation #ms_bit_tmp ec.temp %= #2 ec.const
scoreboard players operation #ms_bit_count ec.temp += #ms_bit_tmp ec.temp
scoreboard players operation #ms_bitfield ec.temp /= #2 ec.const

# Bit 5
scoreboard players operation #ms_bit_tmp ec.temp = #ms_bitfield ec.temp
scoreboard players operation #ms_bit_tmp ec.temp %= #2 ec.const
scoreboard players operation #ms_bit_count ec.temp += #ms_bit_tmp ec.temp
scoreboard players operation #ms_bitfield ec.temp /= #2 ec.const

# Bit 6
scoreboard players operation #ms_bit_tmp ec.temp = #ms_bitfield ec.temp
scoreboard players operation #ms_bit_tmp ec.temp %= #2 ec.const
scoreboard players operation #ms_bit_count ec.temp += #ms_bit_tmp ec.temp
scoreboard players operation #ms_bitfield ec.temp /= #2 ec.const

# Bit 7
scoreboard players operation #ms_bit_tmp ec.temp = #ms_bitfield ec.temp
scoreboard players operation #ms_bit_tmp ec.temp %= #2 ec.const
scoreboard players operation #ms_bit_count ec.temp += #ms_bit_tmp ec.temp
scoreboard players operation #ms_bitfield ec.temp /= #2 ec.const

# Bit 8
scoreboard players operation #ms_bit_tmp ec.temp = #ms_bitfield ec.temp
scoreboard players operation #ms_bit_tmp ec.temp %= #2 ec.const
scoreboard players operation #ms_bit_count ec.temp += #ms_bit_tmp ec.temp
scoreboard players operation #ms_bitfield ec.temp /= #2 ec.const

# Bit 9
scoreboard players operation #ms_bit_tmp ec.temp = #ms_bitfield ec.temp
scoreboard players operation #ms_bit_tmp ec.temp %= #2 ec.const
scoreboard players operation #ms_bit_count ec.temp += #ms_bit_tmp ec.temp
scoreboard players operation #ms_bitfield ec.temp /= #2 ec.const

# Bit 10
scoreboard players operation #ms_bit_tmp ec.temp = #ms_bitfield ec.temp
scoreboard players operation #ms_bit_tmp ec.temp %= #2 ec.const
scoreboard players operation #ms_bit_count ec.temp += #ms_bit_tmp ec.temp
scoreboard players operation #ms_bitfield ec.temp /= #2 ec.const

# Bit 11
scoreboard players operation #ms_bit_tmp ec.temp = #ms_bitfield ec.temp
scoreboard players operation #ms_bit_tmp ec.temp %= #2 ec.const
scoreboard players operation #ms_bit_count ec.temp += #ms_bit_tmp ec.temp
scoreboard players operation #ms_bitfield ec.temp /= #2 ec.const

# Bit 12
scoreboard players operation #ms_bit_tmp ec.temp = #ms_bitfield ec.temp
scoreboard players operation #ms_bit_tmp ec.temp %= #2 ec.const
scoreboard players operation #ms_bit_count ec.temp += #ms_bit_tmp ec.temp
scoreboard players operation #ms_bitfield ec.temp /= #2 ec.const

# Bit 13
scoreboard players operation #ms_bit_tmp ec.temp = #ms_bitfield ec.temp
scoreboard players operation #ms_bit_tmp ec.temp %= #2 ec.const
scoreboard players operation #ms_bit_count ec.temp += #ms_bit_tmp ec.temp
scoreboard players operation #ms_bitfield ec.temp /= #2 ec.const

# Bit 14
scoreboard players operation #ms_bit_tmp ec.temp = #ms_bitfield ec.temp
scoreboard players operation #ms_bit_tmp ec.temp %= #2 ec.const
scoreboard players operation #ms_bit_count ec.temp += #ms_bit_tmp ec.temp
