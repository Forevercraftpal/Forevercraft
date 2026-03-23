# Guild Expedition — Check Individual Player Progress
# @s = guild member, executed at their position
# Input: #gexp_target ec.temp = target biome ID

# Init kill baseline for players who joined mid-expedition
execute if score @s ec.gexp_kill_base matches 0 unless score @s ec.gd_mobkills matches 0 run scoreboard players operation @s ec.gexp_kill_base = @s ec.gd_mobkills

# Detect current biome (uses 5s cache, aligns with tick rate)
function evercraft:biome/detect

# Check if player is in target biome
execute unless score @s ec.biome_id = #gexp_target ec.temp run return 0

# === IN TARGET BIOME ===

# Passive progress: +1 per tick (every 5 seconds)
scoreboard players add #gexp_points ec.temp 1
scoreboard players add @s ec.gexp_contrib 1

# Active progress: mob kills since last check
scoreboard players operation #gexp_kill_delta ec.temp = @s ec.gd_mobkills
scoreboard players operation #gexp_kill_delta ec.temp -= @s ec.gexp_kill_base

# Each new kill = +3 progress
execute if score #gexp_kill_delta ec.temp matches 1.. run scoreboard players operation #gexp_kill_bonus ec.temp = #gexp_kill_delta ec.temp
execute if score #gexp_kill_delta ec.temp matches 1.. run scoreboard players operation #gexp_kill_bonus ec.temp *= #3 adv.temp
execute if score #gexp_kill_delta ec.temp matches 1.. run scoreboard players operation #gexp_points ec.temp += #gexp_kill_bonus ec.temp
execute if score #gexp_kill_delta ec.temp matches 1.. run scoreboard players operation @s ec.gexp_contrib += #gexp_kill_bonus ec.temp

# Update baseline
scoreboard players operation @s ec.gexp_kill_base = @s ec.gd_mobkills
