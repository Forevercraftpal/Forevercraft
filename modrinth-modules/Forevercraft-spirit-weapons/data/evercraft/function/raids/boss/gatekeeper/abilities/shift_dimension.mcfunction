# Gatekeeper — Shift Dimension (Phase 2)
# Cycle between Overworld (0), Nether (1), End (2)

# Advance dimension
scoreboard players add #rd_gk_dim ec.var 1
execute if score #rd_gk_dim ec.var matches 3.. run scoreboard players set #rd_gk_dim ec.var 0

# Clear previous dimension effects
effect clear @a[tag=ec.rd_participant] jump_boost
execute as @e[type=!player,tag=ec.rd_boss,limit=1] run effect clear @s fire_resistance

# Apply new dimension effects
# Nether: boss gets fire resist
execute if score #rd_gk_dim ec.var matches 1 as @e[type=!player,tag=ec.rd_boss,limit=1] run effect give @s fire_resistance infinite 0 true

# End: players get jump boost III (low gravity)
execute if score #rd_gk_dim ec.var matches 2 run effect give @a[tag=ec.rd_participant] jump_boost infinite 2 true

# Announce dimension
execute if score #rd_gk_dim ec.var matches 0 run tellraw @a[tag=ec.rd_participant] [{"text":"  "},{"text":"The realm shifts to the ","color":"gray"},{"text":"Overworld","color":"green","bold":true}]
execute if score #rd_gk_dim ec.var matches 1 run tellraw @a[tag=ec.rd_participant] [{"text":"  "},{"text":"The realm shifts to the ","color":"gray"},{"text":"Nether","color":"red","bold":true}]
execute if score #rd_gk_dim ec.var matches 2 run tellraw @a[tag=ec.rd_participant] [{"text":"  "},{"text":"The realm shifts to the ","color":"gray"},{"text":"End","color":"dark_purple","bold":true}]

# VFX
execute at @e[type=marker,tag=rd.center,limit=1] run playsound minecraft:block.end_portal.spawn hostile @a[tag=ec.rd_participant] ~ ~ ~ 1.0 0.8
execute at @e[type=marker,tag=rd.center,limit=1] run particle minecraft:flash{color:[1.0,1.0,1.0,1.0]} ~ ~1 ~ 0 0 0 0 1
