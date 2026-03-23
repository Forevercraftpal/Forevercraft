# Guidestone Menu — Spawn a single interdimensional destination row (recursive)
# Same as spawn_row but calls update_text_interdim for dimension labels
# Uses #gs_row (0-7) for vertical position, #gs_idx for filtered index

# Stop if we've done 8 rows or run out of entries
execute if score #gs_row ec.gs_temp matches 8.. run return 0
execute unless data storage evercraft:guidestone working[0] run return 0

# Skip entries before our offset
execute if score #gs_idx ec.gs_temp matches 1.. run data remove storage evercraft:guidestone working[0]
execute if score #gs_idx ec.gs_temp matches 1.. run scoreboard players remove #gs_idx ec.gs_temp 1
execute if score #gs_idx ec.gs_temp matches 1.. run return run function evercraft:guidestone/menu/spawn_row_interdim

# Read the current entry
data modify storage evercraft:guidestone current set from storage evercraft:guidestone working[0]
data remove storage evercraft:guidestone working[0]

# Build the display text and store to temp for macro
data modify storage evercraft:guidestone row_args.name set from storage evercraft:guidestone current.name
data modify storage evercraft:guidestone row_args.row set value 0
execute store result storage evercraft:guidestone row_args.row int 1 run scoreboard players get #gs_row ec.gs_temp

# Call the macro spawner to place the row (reuses same place_row for positioning)
function evercraft:guidestone/menu/place_row_interdim with storage evercraft:guidestone row_args

# Advance to next row
scoreboard players add #gs_row ec.gs_temp 1

# Recurse
function evercraft:guidestone/menu/spawn_row_interdim
