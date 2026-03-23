# Grand Illusionist — Enter Phase 2: The Maze
# Kill copies, boss goes invisible, starts totem placement

# Kill all Phase 1 copies
kill @e[tag=ec.rd_gi_fake]
kill @e[tag=ec.rd_gi_vex]

# Reset cooldowns
scoreboard players set #rd_gi_fang_cd ec.var 0
scoreboard players set #rd_gi_totem_cd ec.var 0
scoreboard players set #rd_gi_vis_timer ec.var 0

# Make boss invisible
execute as @e[type=!player,tag=ec.rd_boss,limit=1] run effect give @s invisibility infinite 0 true

# Dialogue
tellraw @a[tag=ec.rd_participant] [{text:"  "},{"text":"\"You destroyed my copies? Impressive. Now try to find ME.\"","color":"dark_red","italic":true}]

# VFX
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run particle minecraft:witch ~ ~1 ~ 2 1 2 0.2 30
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.evoker.prepare_wololo hostile @a[tag=ec.rd_participant] ~ ~ ~ 1.0 0.6
