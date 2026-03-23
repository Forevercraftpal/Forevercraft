# Phase 3: THE ASSEMBLY — Place blocks to build the forge structure
# Duration: 60 seconds (1200 ticks)
# Target: 75 blocks placed (reduced by resonance)
# Passive bonuses: Building, Companions, Trim effects

scoreboard players set @s ec.gf_phase 3
scoreboard players set @s ec.gf_timer 1200
scoreboard players set @s ec.gf_score 0

# Base target 75, reduced by resonance (min 30)
scoreboard players set @s ec.gf_target 75
scoreboard players operation @s ec.gf_target -= @s ec.gf_reson
execute if score @s ec.gf_target matches ..30 run scoreboard players set @s ec.gf_target 30

# Snapshot blocks placed
execute store result score @s ec.gf_snap run scoreboard players get @s ach.blocks_placed

tellraw @s [{"text":"  "},{"text":"✓ Phase 2 COMPLETE!","color":"green","bold":true}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.6 1.3
particle end_rod ~ ~1 ~ 0.3 0.3 0.3 0.1 15

title @s times 5 40 10
title @s title [{"text":"Phase 3","color":"green","bold":true}]
title @s subtitle [{"text":"THE ASSEMBLY","color":"dark_green"},{"text":" — Place blocks!","color":"gray"}]

tellraw @s [{"text":"  "},{"text":"[Phase 3] ","color":"green","bold":true},{"text":"Place ","color":"white"},{"score":{"name":"@s","objective":"ec.gf_target"},"color":"gold","bold":true},{"text":" blocks in 60 seconds!","color":"white"}]

playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.5 1.1
