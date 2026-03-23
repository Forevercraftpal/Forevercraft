# Phase 1: HEAT — Evaluate heat position (runs as player)
# Sweet spot varies by tier: lower tiers = wider sweet spot

scoreboard players set #cf_heat_result ec.cf_temp 0

# Sweet spot zones (tier-scaled)
# Tier 0 (Scrap): 55-90 (wide)
# Tier 1 (Tempered): 60-88
# Tier 2 (Starforged): 65-85
# Tier 3 (Dreamwrought): 68-82
# Tier 4 (Eternal): 72-80
execute if score @s ec.cf_mat_tier matches 0 if score @s ec.cf_heat matches 55..90 run scoreboard players set #cf_heat_result ec.cf_temp 3
execute if score @s ec.cf_mat_tier matches 1 if score @s ec.cf_heat matches 60..88 run scoreboard players set #cf_heat_result ec.cf_temp 3
execute if score @s ec.cf_mat_tier matches 2 if score @s ec.cf_heat matches 65..85 run scoreboard players set #cf_heat_result ec.cf_temp 3
execute if score @s ec.cf_mat_tier matches 3 if score @s ec.cf_heat matches 68..82 run scoreboard players set #cf_heat_result ec.cf_temp 3
execute if score @s ec.cf_mat_tier matches 4 if score @s ec.cf_heat matches 72..80 run scoreboard players set #cf_heat_result ec.cf_temp 3

# Not in sweet spot = miss
execute if score #cf_heat_result ec.cf_temp matches 0 run scoreboard players set #cf_heat_result ec.cf_temp -1

# Apply quality
scoreboard players operation @s ec.cf_quality += #cf_heat_result ec.cf_temp

# Clamp quality at 0 minimum
execute if score @s ec.cf_quality matches ..-1 run scoreboard players set @s ec.cf_quality 0

# Feedback
execute if score #cf_heat_result ec.cf_temp matches 3 run tellraw @s [{text:"Perfect heat! ",color:"gold",bold:true},{text:"+3 quality",color:"yellow"}]
execute if score #cf_heat_result ec.cf_temp matches 3 run playsound minecraft:block.anvil.use master @s ~ ~ ~ 0.8 1.2

execute if score #cf_heat_result ec.cf_temp matches -1 run tellraw @s [{text:"Missed the sweet spot! ",color:"red"},{text:"-1 quality",color:"gray"}]
execute if score #cf_heat_result ec.cf_temp matches -1 run playsound minecraft:entity.villager.no master @s ~ ~ ~ 0.5 1.0

# Clean up phase 1 elements
execute at @s as @e[type=text_display,tag=CF.HeatBar,distance=..7] run kill @s
execute at @s as @e[type=text_display,tag=CF.HeatReadyText,distance=..7] run kill @s
execute at @s as @e[type=interaction,tag=CF.HeatReadyBtn,distance=..7] run kill @s

# Transition to Phase 2
scoreboard players set @s ec.cf_phase 2
scoreboard players set @s ec.cf_timer 0
function evercraft:craftforever/forging/minigame/phase2_hammer/start
