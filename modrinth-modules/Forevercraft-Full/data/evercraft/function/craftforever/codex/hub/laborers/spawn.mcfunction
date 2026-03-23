# Craftforever Codex — Laborer Registry Section
# Shows dynamic laborer data: active laborers, stats, slot info
# Run as player at player position

# Calculate max slots from Artisan Rank
scoreboard players set #cf_max_slots ec.temp 0
execute if score @s ec.cf_rank matches 10.. run scoreboard players set #cf_max_slots ec.temp 1
execute if score @s ec.cf_rank matches 30.. run scoreboard players set #cf_max_slots ec.temp 2
execute if score @s ec.cf_rank matches 50.. run scoreboard players set #cf_max_slots ec.temp 3
execute if score @s ec.cf_rank matches 70.. run scoreboard players set #cf_max_slots ec.temp 4
execute if score @s ec.cf_rank matches 90.. run scoreboard players set #cf_max_slots ec.temp 5
scoreboard players operation @s ec.lb_max = #cf_max_slots ec.temp

# Count active laborers
execute store result score #lb_count ec.temp if entity @e[type=villager,tag=ec.laborer,distance=..64]
scoreboard players operation @s ec.lb_count = #lb_count ec.temp

# Store for macro
execute store result storage evercraft:cf_temp count int 1 run scoreboard players get @s ec.lb_count
execute store result storage evercraft:cf_temp max_slots int 1 run scoreboard players get @s ec.lb_max
execute store result storage evercraft:cf_temp rank int 1 run scoreboard players get @s ec.cf_rank

# Slots header
function evercraft:craftforever/codex/hub/laborers/set_display with storage evercraft:cf_temp

# Branch: has laborers vs no laborers
execute if score @s ec.lb_count matches 1.. run function evercraft:craftforever/codex/hub/laborers/show_active
execute if score @s ec.lb_count matches ..0 run function evercraft:craftforever/codex/hub/laborers/show_empty

# Next unlock info (bottom)
function evercraft:craftforever/codex/hub/laborers/show_unlock_info
