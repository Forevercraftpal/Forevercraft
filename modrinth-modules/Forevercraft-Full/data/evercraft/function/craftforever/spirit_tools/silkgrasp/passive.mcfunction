# Silkgrasp — Passive: Double wool tracking + particles
# Run as/at: player holding Silkgrasp

# Enchant particles
execute if score #st_effect_cd ec.var matches 0 run particle minecraft:enchant ~ ~1 ~ 0.3 0.3 0.3 0.3 3

# Auto-shear nearby sheep and mooshrooms (every 40 ticks)
# Grant 15 XP per auto-shear cycle if sheep found
execute if score #st_effect_cd ec.var matches 0 if entity @e[type=sheep,distance=..8,nbt={Sheared:0b},limit=1] run function evercraft:craft_affinity/grant {class_id:6, delta:15}
execute if score #st_effect_cd ec.var matches 0 as @e[type=sheep,distance=..8,nbt={Sheared:0b},limit=3,sort=nearest] at @s run function evercraft:craftforever/spirit_tools/silkgrasp/shear_sheep
execute if score #st_effect_cd ec.var matches 0 as @e[type=mooshroom,distance=..8,limit=1,sort=nearest] at @s run function evercraft:craftforever/spirit_tools/silkgrasp/shear_mooshroom

# === WOOL PICKUP DETECTION (all 16 colors — bonus wool on any color) ===
# Sum all wool colors into a single total
scoreboard players set #st_wool_total ec.var 0
scoreboard players operation #st_wool_total ec.var += @s ec.tt_s_wool
scoreboard players operation #st_wool_total ec.var += @s ec.st_s_owool
scoreboard players operation #st_wool_total ec.var += @s ec.st_s_mwool
scoreboard players operation #st_wool_total ec.var += @s ec.st_s_lbwool
scoreboard players operation #st_wool_total ec.var += @s ec.st_s_ywool
scoreboard players operation #st_wool_total ec.var += @s ec.st_s_lwool
scoreboard players operation #st_wool_total ec.var += @s ec.st_s_pwool
scoreboard players operation #st_wool_total ec.var += @s ec.st_s_gwool
scoreboard players operation #st_wool_total ec.var += @s ec.st_s_lgwool
scoreboard players operation #st_wool_total ec.var += @s ec.st_s_cwool
scoreboard players operation #st_wool_total ec.var += @s ec.st_s_prwool
scoreboard players operation #st_wool_total ec.var += @s ec.st_s_blwool
scoreboard players operation #st_wool_total ec.var += @s ec.st_s_brwool
scoreboard players operation #st_wool_total ec.var += @s ec.st_s_grwool
scoreboard players operation #st_wool_total ec.var += @s ec.st_s_rwool
scoreboard players operation #st_wool_total ec.var += @s ec.st_s_bkwool

# If total increased → wool was picked up → give bonus
execute unless score #st_wool_total ec.var = @s ec.st_wool_prev run function evercraft:craftforever/spirit_tools/silkgrasp/bonus_wool
scoreboard players operation @s ec.st_wool_prev = #st_wool_total ec.var
