# Reset all harmonization counters for @s
# Level-based counters for compounding system

# === STRENGTH ===
scoreboard players set @s ec.h_str_1 0
scoreboard players set @s ec.h_str_2 0
scoreboard players set @s ec.h_str_3 0
scoreboard players set @s ec.h_str_4 0
scoreboard players set @s ec.h_str 0

# === SPEED ===
scoreboard players set @s ec.h_spd_1 0
scoreboard players set @s ec.h_spd_2 0
scoreboard players set @s ec.h_spd_3 0
scoreboard players set @s ec.h_spd_4 0
scoreboard players set @s ec.h_speed 0

# === HASTE ===
scoreboard players set @s ec.h_hst_1 0
scoreboard players set @s ec.h_hst_2 0
scoreboard players set @s ec.h_hst_3 0
scoreboard players set @s ec.h_hst_4 0
scoreboard players set @s ec.h_haste 0

# === RESISTANCE ===
scoreboard players set @s ec.h_res_1 0
scoreboard players set @s ec.h_res_2 0
scoreboard players set @s ec.h_res_3 0
scoreboard players set @s ec.h_res_4 0
scoreboard players set @s ec.h_resist 0

# === JUMP BOOST ===
scoreboard players set @s ec.h_jmp_1 0
scoreboard players set @s ec.h_jmp_2 0
scoreboard players set @s ec.h_jmp_3 0
scoreboard players set @s ec.h_jmp_4 0
scoreboard players set @s ec.h_jump 0

# === REGENERATION ===
scoreboard players set @s ec.h_reg_1 0
scoreboard players set @s ec.h_reg_2 0
scoreboard players set @s ec.h_reg_3 0
scoreboard players set @s ec.h_reg_4 0
scoreboard players set @s ec.h_regen 0

# Count all sources by level
function evercraft:harmonize/count/speed
function evercraft:harmonize/count/haste
function evercraft:harmonize/count/resistance
function evercraft:harmonize/count/strength
function evercraft:harmonize/count/jump_boost
function evercraft:harmonize/count/regeneration

# Count satchel-stored artifacts (virtual storage, not in inventory)
function evercraft:harmonize/count_satchel

# Count hero-satchel-stored boss artifacts (11-slot boss satchel)
function evercraft:harmonize/count_hero_satchel
