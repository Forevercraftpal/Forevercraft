# Guidestone Menu — Filter registry to guild members' entries
# Macro args: guild_id (from menu_ctx)
# Iterates working[], appends matches to filtered[]
# Matches: hearthstones owned by guild members, or guild stones of the same guild

# Check if working is empty
execute unless data storage evercraft:guidestone working[0] run return 0

# Read first entry
data modify storage evercraft:guidestone filter_check set from storage evercraft:guidestone working[0]

# Skip the source guidestone (the one being used)
execute store result score #filter_id ec.gs_temp run data get storage evercraft:guidestone filter_check.id
execute store result score #source_id ec.gs_temp run data get storage evercraft:guidestone menu_ctx.source_id
execute if score #filter_id ec.gs_temp = #source_id ec.gs_temp run data remove storage evercraft:guidestone working[0]
execute if score #filter_id ec.gs_temp = #source_id ec.gs_temp run return run function evercraft:guidestone/menu/filter_guild with storage evercraft:guidestone menu_ctx

# Check 1: Is this a guild_stone with matching guild_id?
$execute if data storage evercraft:guidestone {filter_check:{type:"guild_stone",guild_id:$(guild_id)}} run data modify storage evercraft:guidestone filtered append from storage evercraft:guidestone filter_check
$execute if data storage evercraft:guidestone {filter_check:{type:"guild_stone",guild_id:$(guild_id)}} run data remove storage evercraft:guidestone working[0]
$execute if data storage evercraft:guidestone {filter_check:{type:"guild_stone",guild_id:$(guild_id)}} run return run function evercraft:guidestone/menu/filter_guild with storage evercraft:guidestone menu_ctx

# Check 2: Is this a hearthstone? If so, check if owner uuid3 is in the guild member list
execute if data storage evercraft:guidestone {filter_check:{type:"hearthstone"}} run function evercraft:guidestone/menu/filter_guild_member with storage evercraft:guidestone menu_ctx

# Remove first entry and recurse
data remove storage evercraft:guidestone working[0]
function evercraft:guidestone/menu/filter_guild with storage evercraft:guidestone menu_ctx
