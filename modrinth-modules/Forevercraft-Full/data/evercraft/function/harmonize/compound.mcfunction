# Compound sources: 2x Level N = 1x Level N+1
# Uses integer division (floor(count/2)) to carry pairs upward correctly
# Constant #2 on adv.temp is used for division

# === STRENGTH ===
# Level 1 -> Level 2 carry
scoreboard players operation #temp adv.temp = @s ec.h_str_1
scoreboard players operation #temp adv.temp /= #2 adv.temp
scoreboard players operation @s ec.h_str_2 += #temp adv.temp
# Level 2 -> Level 3 carry
scoreboard players operation #temp adv.temp = @s ec.h_str_2
scoreboard players operation #temp adv.temp /= #2 adv.temp
scoreboard players operation @s ec.h_str_3 += #temp adv.temp
# Level 3 -> Level 4 carry
scoreboard players operation #temp adv.temp = @s ec.h_str_3
scoreboard players operation #temp adv.temp /= #2 adv.temp
scoreboard players operation @s ec.h_str_4 += #temp adv.temp
# Determine final applied level (highest non-zero)
scoreboard players set @s ec.h_str 0
execute if score @s ec.h_str_1 matches 1.. run scoreboard players set @s ec.h_str 1
execute if score @s ec.h_str_2 matches 1.. run scoreboard players set @s ec.h_str 2
execute if score @s ec.h_str_3 matches 1.. run scoreboard players set @s ec.h_str 3
execute if score @s ec.h_str_4 matches 1.. run scoreboard players set @s ec.h_str 4
execute if score @s ec.h_str_4 matches 2.. run scoreboard players set @s ec.h_str 5

# === SPEED ===
# Level 1 -> Level 2 carry
scoreboard players operation #temp adv.temp = @s ec.h_spd_1
scoreboard players operation #temp adv.temp /= #2 adv.temp
scoreboard players operation @s ec.h_spd_2 += #temp adv.temp
# Level 2 -> Level 3 carry
scoreboard players operation #temp adv.temp = @s ec.h_spd_2
scoreboard players operation #temp adv.temp /= #2 adv.temp
scoreboard players operation @s ec.h_spd_3 += #temp adv.temp
# Level 3 -> Level 4 carry
scoreboard players operation #temp adv.temp = @s ec.h_spd_3
scoreboard players operation #temp adv.temp /= #2 adv.temp
scoreboard players operation @s ec.h_spd_4 += #temp adv.temp
# Determine final applied level (highest non-zero)
scoreboard players set @s ec.h_speed 0
execute if score @s ec.h_spd_1 matches 1.. run scoreboard players set @s ec.h_speed 1
execute if score @s ec.h_spd_2 matches 1.. run scoreboard players set @s ec.h_speed 2
execute if score @s ec.h_spd_3 matches 1.. run scoreboard players set @s ec.h_speed 3
execute if score @s ec.h_spd_4 matches 1.. run scoreboard players set @s ec.h_speed 4
execute if score @s ec.h_spd_4 matches 2.. run scoreboard players set @s ec.h_speed 5

# === HASTE ===
# Level 1 -> Level 2 carry
scoreboard players operation #temp adv.temp = @s ec.h_hst_1
scoreboard players operation #temp adv.temp /= #2 adv.temp
scoreboard players operation @s ec.h_hst_2 += #temp adv.temp
# Level 2 -> Level 3 carry
scoreboard players operation #temp adv.temp = @s ec.h_hst_2
scoreboard players operation #temp adv.temp /= #2 adv.temp
scoreboard players operation @s ec.h_hst_3 += #temp adv.temp
# Level 3 -> Level 4 carry
scoreboard players operation #temp adv.temp = @s ec.h_hst_3
scoreboard players operation #temp adv.temp /= #2 adv.temp
scoreboard players operation @s ec.h_hst_4 += #temp adv.temp
# Determine final applied level (highest non-zero)
scoreboard players set @s ec.h_haste 0
execute if score @s ec.h_hst_1 matches 1.. run scoreboard players set @s ec.h_haste 1
execute if score @s ec.h_hst_2 matches 1.. run scoreboard players set @s ec.h_haste 2
execute if score @s ec.h_hst_3 matches 1.. run scoreboard players set @s ec.h_haste 3
execute if score @s ec.h_hst_4 matches 1.. run scoreboard players set @s ec.h_haste 4
execute if score @s ec.h_hst_4 matches 2.. run scoreboard players set @s ec.h_haste 5

# === RESISTANCE ===
# Level 1 -> Level 2 carry
scoreboard players operation #temp adv.temp = @s ec.h_res_1
scoreboard players operation #temp adv.temp /= #2 adv.temp
scoreboard players operation @s ec.h_res_2 += #temp adv.temp
# Level 2 -> Level 3 carry
scoreboard players operation #temp adv.temp = @s ec.h_res_2
scoreboard players operation #temp adv.temp /= #2 adv.temp
scoreboard players operation @s ec.h_res_3 += #temp adv.temp
# Level 3 -> Level 4 carry
scoreboard players operation #temp adv.temp = @s ec.h_res_3
scoreboard players operation #temp adv.temp /= #2 adv.temp
scoreboard players operation @s ec.h_res_4 += #temp adv.temp
# Determine final applied level (highest non-zero)
scoreboard players set @s ec.h_resist 0
execute if score @s ec.h_res_1 matches 1.. run scoreboard players set @s ec.h_resist 1
execute if score @s ec.h_res_2 matches 1.. run scoreboard players set @s ec.h_resist 2
execute if score @s ec.h_res_3 matches 1.. run scoreboard players set @s ec.h_resist 3
execute if score @s ec.h_res_4 matches 1.. run scoreboard players set @s ec.h_resist 4
execute if score @s ec.h_res_4 matches 2.. run scoreboard players set @s ec.h_resist 5

# === JUMP BOOST ===
# Level 1 -> Level 2 carry
scoreboard players operation #temp adv.temp = @s ec.h_jmp_1
scoreboard players operation #temp adv.temp /= #2 adv.temp
scoreboard players operation @s ec.h_jmp_2 += #temp adv.temp
# Level 2 -> Level 3 carry
scoreboard players operation #temp adv.temp = @s ec.h_jmp_2
scoreboard players operation #temp adv.temp /= #2 adv.temp
scoreboard players operation @s ec.h_jmp_3 += #temp adv.temp
# Level 3 -> Level 4 carry
scoreboard players operation #temp adv.temp = @s ec.h_jmp_3
scoreboard players operation #temp adv.temp /= #2 adv.temp
scoreboard players operation @s ec.h_jmp_4 += #temp adv.temp
# Determine final applied level (highest non-zero)
scoreboard players set @s ec.h_jump 0
execute if score @s ec.h_jmp_1 matches 1.. run scoreboard players set @s ec.h_jump 1
execute if score @s ec.h_jmp_2 matches 1.. run scoreboard players set @s ec.h_jump 2
execute if score @s ec.h_jmp_3 matches 1.. run scoreboard players set @s ec.h_jump 3
execute if score @s ec.h_jmp_4 matches 1.. run scoreboard players set @s ec.h_jump 4
execute if score @s ec.h_jmp_4 matches 2.. run scoreboard players set @s ec.h_jump 5

# === REGENERATION ===
# Level 1 -> Level 2 carry (4 sources needed — regen is more valuable than other effects)
scoreboard players operation #temp adv.temp = @s ec.h_reg_1
scoreboard players operation #temp adv.temp /= #4 adv.temp
scoreboard players operation @s ec.h_reg_2 += #temp adv.temp
# Level 2 -> Level 3 carry
scoreboard players operation #temp adv.temp = @s ec.h_reg_2
scoreboard players operation #temp adv.temp /= #2 adv.temp
scoreboard players operation @s ec.h_reg_3 += #temp adv.temp
# Level 3 -> Level 4 carry
scoreboard players operation #temp adv.temp = @s ec.h_reg_3
scoreboard players operation #temp adv.temp /= #2 adv.temp
scoreboard players operation @s ec.h_reg_4 += #temp adv.temp
# Determine final applied level (highest non-zero)
scoreboard players set @s ec.h_regen 0
execute if score @s ec.h_reg_1 matches 1.. run scoreboard players set @s ec.h_regen 1
execute if score @s ec.h_reg_2 matches 1.. run scoreboard players set @s ec.h_regen 2
execute if score @s ec.h_reg_3 matches 1.. run scoreboard players set @s ec.h_regen 3
execute if score @s ec.h_reg_4 matches 1.. run scoreboard players set @s ec.h_regen 4
execute if score @s ec.h_reg_4 matches 2.. run scoreboard players set @s ec.h_regen 5
