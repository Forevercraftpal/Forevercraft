# Guild Expedition — Apply accumulated progress to marker
# @s = guild marker
# Input: #gexp_points ec.temp = points to add this tick

# Read current progress, add points
execute store result score #gexp_progress ec.temp run data get entity @s data.expedition.progress
scoreboard players operation #gexp_progress ec.temp += #gexp_points ec.temp
execute store result entity @s data.expedition.progress int 1 run scoreboard players get #gexp_progress ec.temp

# Update bossbar
function evercraft:guild/expedition/bossbar/update

# Check if goal reached (500)
execute store result score #gexp_goal ec.temp run data get entity @s data.expedition.goal
execute if score #gexp_progress ec.temp >= #gexp_goal ec.temp run function evercraft:guild/expedition/end
