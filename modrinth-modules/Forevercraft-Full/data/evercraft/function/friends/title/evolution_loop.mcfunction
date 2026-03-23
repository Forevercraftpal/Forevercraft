# Friend Title — Evolution loop: check each title for evolution
# Iterates temp.evo_list, appending to temp.evo_result (with potential evolution)
# #fr_evo_today ec.temp = current day

execute unless data storage evercraft:friends temp.evo_list[0] run return 0

# Read entry
execute store result score #fr_evo_day ec.temp run data get storage evercraft:friends temp.evo_list[0].granted_day

# Calculate age in days
scoreboard players operation #fr_evo_age ec.temp = #fr_evo_today ec.temp
scoreboard players operation #fr_evo_age ec.temp -= #fr_evo_day ec.temp

# Check if 30+ days old — attempt evolution
scoreboard players set #fr_evo_this ec.temp 0
execute if score #fr_evo_age ec.temp matches 30.. run function evercraft:friends/title/try_evolve
# If this entry evolved, notify player and update the changed flag
execute if score #fr_evo_this ec.temp matches 1 run function evercraft:friends/title/notify_evolution
execute if score #fr_evo_this ec.temp matches 1 run scoreboard players set #fr_evo_changed ec.temp 1

# Append (possibly evolved) entry
data modify storage evercraft:friends temp.evo_result append from storage evercraft:friends temp.evo_list[0]

# Pop and recurse
data remove storage evercraft:friends temp.evo_list[0]
function evercraft:friends/title/evolution_loop
