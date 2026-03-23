# Void Architect — Enter Phase 2: Gravity Wells

# Reset cooldowns
scoreboard players set #rd_va_well_cd ec.var 0
scoreboard players set #rd_va_tp_cd ec.var 0
scoreboard players set #rd_va_proj_cd ec.var 0

# Dialogue
tellraw @a[tag=ec.rd_participant] [{text:"  "},{"text":"\"Space bends to my will. You cannot escape the pull of the void.\"","color":"light_purple","italic":true}]

# VFX — void eruption
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run particle minecraft:reverse_portal ~ ~1 ~ 3 2 3 0.1 100
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.ender_dragon.flap hostile @a[tag=ec.rd_participant] ~ ~ ~ 1.0 0.4

# Spawn initial gravity well
function evercraft:raids/boss/void_architect/abilities/spawn_well
