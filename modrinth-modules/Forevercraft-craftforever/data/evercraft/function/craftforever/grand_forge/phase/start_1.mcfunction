# Phase 1: THE GATHERING — Mine blocks to fill the forge
# Duration: 60 seconds (1200 ticks)
# Target: 50 blocks mined (reduced by resonance bonus)
# Passive bonuses: Mining tree, Prospect nodes, Guild buffs

scoreboard players set @s ec.gf_phase 1
scoreboard players set @s ec.gf_timer 1200
scoreboard players set @s ec.gf_score 0

# Base target 50, reduced by resonance (min 20)
scoreboard players set @s ec.gf_target 50
scoreboard players operation @s ec.gf_target -= @s ec.gf_reson
execute if score @s ec.gf_target matches ..20 run scoreboard players set @s ec.gf_target 20

# Snapshot blocks mined for delta tracking
execute store result score @s ec.gf_snap run scoreboard players get @s ach.blocks_mined

title @s times 5 40 10
title @s title [{"text":"Phase 1","color":"green","bold":true}]
title @s subtitle [{"text":"THE GATHERING","color":"dark_green"},{"text":" — Mine blocks!","color":"gray"}]

tellraw @s [{"text":"  "},{"text":"[Phase 1] ","color":"green","bold":true},{"text":"Mine ","color":"white"},{"score":{"name":"@s","objective":"ec.gf_target"},"color":"gold","bold":true},{"text":" blocks in 60 seconds!","color":"white"}]

playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.5 1.5
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.7 0.8
