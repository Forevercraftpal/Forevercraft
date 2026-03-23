# Phase 2: THE SMELTING — Cook meals to fuel the forge
# Duration: 45 seconds (900 ticks)
# Target: 10 meals cooked (reduced by resonance)
# Passive bonuses: Culinary tree, Cooking mastery, Blacksmith tree

scoreboard players set @s ec.gf_phase 2
scoreboard players set @s ec.gf_timer 900
scoreboard players set @s ec.gf_score 0

# Base target 10, reduced by resonance (min 3)
scoreboard players set @s ec.gf_target 10
scoreboard players operation #gf_res_half ec.var = @s ec.gf_reson
scoreboard players operation #gf_res_half ec.var /= #2 adv.temp
scoreboard players operation @s ec.gf_target -= #gf_res_half ec.var
execute if score @s ec.gf_target matches ..3 run scoreboard players set @s ec.gf_target 3

# Snapshot meals cooked
execute store result score @s ec.gf_snap run scoreboard players get @s ach.meals_cooked

# Phase 1 complete celebration
tellraw @s [{"text":"  "},{"text":"✓ Phase 1 COMPLETE!","color":"green","bold":true}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.6 1.3
particle end_rod ~ ~1 ~ 0.3 0.3 0.3 0.1 15

title @s times 5 40 10
title @s title [{"text":"Phase 2","color":"green","bold":true}]
title @s subtitle [{"text":"THE SMELTING","color":"dark_green"},{"text":" — Cook meals!","color":"gray"}]

tellraw @s [{"text":"  "},{"text":"[Phase 2] ","color":"green","bold":true},{"text":"Cook ","color":"white"},{"score":{"name":"@s","objective":"ec.gf_target"},"color":"gold","bold":true},{"text":" meals in 45 seconds!","color":"white"}]

playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.5 1.3
