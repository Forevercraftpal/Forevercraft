# The Leviathan — Main Tick

# Ambient
execute as @e[type=guardian,tag=ec.rd_boss,limit=1] at @s run particle minecraft:bubble ~ ~1 ~ 1 1 1 0.02 3
execute as @e[type=guardian,tag=ec.rd_boss,limit=1] at @s run particle minecraft:dolphin ~ ~1.5 ~ 0.5 0.5 0.5 0.01 2

# Mining Fatigue I to all participants (reapply every 40 ticks)
execute store result score #rd_temp ec.var run time query gametime
scoreboard players operation #rd_temp ec.var %= #20 adv.temp
execute if score #rd_temp ec.var matches 0 run effect give @a[tag=ec.rd_participant] mining_fatigue 5 0 true

# Sponge puzzle — always active (all phases)
function evercraft:raids/boss/leviathan/puzzle/sponge_tick

# Phase routing
execute if score #rd_boss_phase ec.var matches 1 run function evercraft:raids/boss/leviathan/abilities/phase1
execute if score #rd_boss_phase ec.var matches 2 run function evercraft:raids/boss/leviathan/abilities/phase2
execute if score #rd_boss_phase ec.var matches 3 run function evercraft:raids/boss/leviathan/abilities/phase3

# Decrement cooldowns
execute if score #rd_lv_laser_cd ec.var matches 1.. run scoreboard players remove #rd_lv_laser_cd ec.var 1
execute if score #rd_lv_wave_cd ec.var matches 1.. run scoreboard players remove #rd_lv_wave_cd ec.var 1
execute if score #rd_lv_burrow_cd ec.var matches 1.. run scoreboard players remove #rd_lv_burrow_cd ec.var 1
