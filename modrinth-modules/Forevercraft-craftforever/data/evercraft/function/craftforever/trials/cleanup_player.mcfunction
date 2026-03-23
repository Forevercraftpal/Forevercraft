# Trade Trial — Cleanup single player
# Run as/at: the ec.tt_player

# === CLEAR ARENA ===
execute store result storage evercraft:trials ax int 1 run scoreboard players get @s ec.tt_arena_x
execute store result storage evercraft:trials az int 1 run scoreboard players get @s ec.tt_arena_z
function evercraft:craftforever/trials/fill_air with storage evercraft:trials

# === REMOVE ALL TRIAL TOOLS/ITEMS ===
clear @s netherite_pickaxe[custom_data~{trial_tool:1b}]
clear @s netherite_hoe[custom_data~{trial_tool:1b}]
clear @s fishing_rod[custom_data~{trial_tool:1b}]
clear @s netherite_axe[custom_data~{trial_tool:1b}]
clear @s shears[custom_data~{trial_tool:1b}]
clear @s cobblestone[custom_data~{trial_tool:1b}]
clear @s dirt[custom_data~{trial_tool:1b}]
clear @s oak_planks[custom_data~{trial_tool:1b}]
clear @s bone_meal[custom_data~{trial_tool:1b}]
clear @s water_bucket[custom_data~{trial_tool:1b}]

# === CLEAR ANY TRIAL-DROPPED ITEMS ===
execute positioned ~ 300 ~ run kill @e[type=item,distance=..50,y=295,dy=50]

# === KILL TRIAL MOBS ===
execute positioned ~ 300 ~ run kill @e[tag=ec.tt_mob,distance=..50,y=295,dy=50]

# === TELEPORT BACK ===
execute as @e[type=marker,tag=ec.tt_return,limit=1] run tp @p[tag=ec.tt_player,sort=nearest] @s
kill @e[type=marker,tag=ec.tt_return]

# === HIDE BOSSBAR ===
bossbar set evercraft:trial_timer visible false
bossbar set evercraft:trial_timer players

# === RESET STATE ===
tag @s remove ec.tt_player
tag @s remove ec.tt_complete
scoreboard players set @s ec.tt_active 0
scoreboard players set @s ec.tt_type 0
scoreboard players set @s ec.tt_tier 0
scoreboard players set @s ec.tt_timer 0
scoreboard players set @s ec.tt_score 0
scoreboard players set @s ec.tt_target 0
scoreboard players set @s ec.tt_hard_mode 0
scoreboard players set @s ec.tt_first_clear 0

# Clear hard mode debuffs
effect clear @s mining_fatigue

# Reset global flag (check if any other players still in trials)
execute unless entity @a[tag=ec.tt_player] run scoreboard players set #tt_active ec.var 0

# Clear actionbar
title @s actionbar {"text":""}

# Sound
playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 0.5 1.0
