# Guild Warp — Spawn destination rows (recursive)
# Uses #guild_warp_row (0-5) for vertical position, #guild_warp_idx for list index

# Stop if we've done 6 rows or run out of entries
execute if score #guild_warp_row ec.temp matches 6.. run return 0
execute unless data storage evercraft:guild warp.display[0] run return 0

# Skip entries before our offset
execute if score #guild_warp_idx ec.temp matches 1.. run data remove storage evercraft:guild warp.display[0]
execute if score #guild_warp_idx ec.temp matches 1.. run scoreboard players remove #guild_warp_idx ec.temp 1
execute if score #guild_warp_idx ec.temp matches 1.. run return run function evercraft:guild/gui/menu/warp/spawn_rows

# Read the current entry
data modify storage evercraft:guild warp.current set from storage evercraft:guild warp.display[0]
data remove storage evercraft:guild warp.display[0]

# Store row number for the macro
execute store result storage evercraft:guild warp.current.row int 1 run scoreboard players get #guild_warp_row ec.temp

# Ensure UUID fields exist (legacy entries)
execute unless data storage evercraft:guild warp.current.uuid0 run data modify storage evercraft:guild warp.current.uuid0 set value 0
execute unless data storage evercraft:guild warp.current.uuid1 run data modify storage evercraft:guild warp.current.uuid1 set value 0
execute unless data storage evercraft:guild warp.current.uuid2 run data modify storage evercraft:guild warp.current.uuid2 set value 0
execute unless data storage evercraft:guild warp.current.uuid3 run data modify storage evercraft:guild warp.current.uuid3 set value 0

# Spawn text + interaction at the correct Y offset
function evercraft:guild/gui/menu/warp/place_row with storage evercraft:guild warp.current

# Advance to next row
scoreboard players add #guild_warp_row ec.temp 1

# Recurse
function evercraft:guild/gui/menu/warp/spawn_rows
