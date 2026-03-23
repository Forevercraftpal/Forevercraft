# Hollow Sovereign — Phase 2 Setup: The Sculk Tendrils
# Boss becomes permanently visible. Clear invis state, start tendril + silence mechanics.

# Remove invisibility permanently
execute as @e[type=!player,tag=ec.rd_boss,limit=1] run effect clear @s invisibility
execute as @e[type=!player,tag=ec.rd_boss,limit=1] run effect clear @s glowing
execute as @e[type=!player,tag=ec.rd_boss,limit=1] run effect clear @s speed

# Reset Phase 1 state
scoreboard players set #rd_hs_vis_timer ec.var 0
scoreboard players set #rd_hs_hits ec.var 0

# Initialize Phase 2 state
scoreboard players set #rd_hs_silence ec.var 0
scoreboard players set #rd_hs_silence_timer ec.var 0
scoreboard players set #rd_hs_tendril_cd ec.var 0

# Dialogue
tellraw @a[tag=ec.rd_participant] [{text:"  "},{"text":"\"You see me now... but you cannot silence what the sculk speaks.\"","color":"aqua","italic":true}]

# Dramatic VFX — sculk eruption
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run particle minecraft:sculk_soul ~ ~0.5 ~ 5 0.5 5 0.05 80
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:block.sculk_catalyst.bloom hostile @a[tag=ec.rd_participant] ~ ~ ~ 1.0 0.4

# Spawn initial tendrils
function evercraft:raids/boss/hollow_sovereign/abilities/spawn_tendril
