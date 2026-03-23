# Lore Map — Recursive set scanner
# Checks set #lore_scan (1-162), shows in-progress sets up to 10
# Run as: the triggering player

# Store current index to storage for macro call
execute store result storage evercraft:lore temp.scan_idx int 1 run scoreboard players get #lore_scan ec.temp

# Check this set (macro reads ec.ls_$(scan_idx) and compares to required pieces)
function evercraft:lore/map/check_set with storage evercraft:lore temp

# Increment scan index
scoreboard players add #lore_scan ec.temp 1

# Continue if more sets remain and haven't shown 10 yet
execute if score #lore_scan ec.temp matches ..162 if score #lore_shown ec.temp matches ..9 run function evercraft:lore/map/scan
