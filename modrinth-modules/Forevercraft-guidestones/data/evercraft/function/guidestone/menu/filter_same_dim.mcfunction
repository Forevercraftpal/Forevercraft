# Guidestone Menu — Filter registry entries to same dimension
# Macro arg: dim (from dim_arg storage, set by caller)
# Iterates working[], appends matches to filtered[]
# Also skips the source guidestone (the one the player is standing at)

# Check if working is empty
execute unless data storage evercraft:guidestone working[0] run return 0

# Read first entry
data modify storage evercraft:guidestone filter_check set from storage evercraft:guidestone working[0]

# Skip the source guidestone (player's current one)
execute store result score #filter_id ec.gs_temp run data get storage evercraft:guidestone filter_check.id
execute store result score #source_id ec.gs_temp run data get storage evercraft:guidestone menu_ctx.source_id
execute if score #filter_id ec.gs_temp = #source_id ec.gs_temp run data remove storage evercraft:guidestone working[0]
execute if score #filter_id ec.gs_temp = #source_id ec.gs_temp run return run function evercraft:guidestone/menu/filter_same_dim with storage evercraft:guidestone dim_arg

# Compare dimensions — if filter_check.dim matches menu_ctx.dim, include it
$execute if data storage evercraft:guidestone {filter_check:{dim:"$(dim)"}} run data modify storage evercraft:guidestone filtered append from storage evercraft:guidestone filter_check

# Remove first entry and recurse
data remove storage evercraft:guidestone working[0]
function evercraft:guidestone/menu/filter_same_dim with storage evercraft:guidestone dim_arg
