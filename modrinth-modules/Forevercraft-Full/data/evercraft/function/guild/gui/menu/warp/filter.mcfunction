# Guild Warp — Filter guidestone registry for warp destinations
# Macro args: guild_id, source_id
# Iterates evercraft:guild warp.working[], appends matches to warp.filtered[]
# Matches: guild member hearthstones, guild stones of same guild, all other guidestones

# Check if working is empty
execute unless data storage evercraft:guild warp.working[0] run return 0

# Read first entry
data modify storage evercraft:guild warp.check set from storage evercraft:guild warp.working[0]

# Skip the source guild stone (the one we're using)
execute store result score #warp_filt_id ec.temp run data get storage evercraft:guild warp.check.id
execute store result score #warp_src_id ec.temp run data get storage evercraft:guild warp.filter_ctx.source_id
execute if score #warp_filt_id ec.temp = #warp_src_id ec.temp run data remove storage evercraft:guild warp.working[0]
execute if score #warp_filt_id ec.temp = #warp_src_id ec.temp run return run function evercraft:guild/gui/menu/warp/filter with storage evercraft:guild warp.filter_ctx

# Check 1: Is this a guild_stone with matching guild_id? → include (free)
$execute if data storage evercraft:guild {warp:{check:{type:"guild_stone",guild_id:$(guild_id)}}} run data modify storage evercraft:guild warp.check.warp_free set value 1b
$execute if data storage evercraft:guild {warp:{check:{type:"guild_stone",guild_id:$(guild_id)}}} run data modify storage evercraft:guild warp.filtered append from storage evercraft:guild warp.check
$execute if data storage evercraft:guild {warp:{check:{type:"guild_stone",guild_id:$(guild_id)}}} run data remove storage evercraft:guild warp.working[0]
$execute if data storage evercraft:guild {warp:{check:{type:"guild_stone",guild_id:$(guild_id)}}} run return run function evercraft:guild/gui/menu/warp/filter with storage evercraft:guild warp.filter_ctx

# Check 2: Is this a hearthstone? Check if owner is a guild member
execute if data storage evercraft:guild {warp:{check:{type:"hearthstone"}}} run function evercraft:guild/gui/menu/warp/filter_hearthstone with storage evercraft:guild warp.filter_ctx

# Check 3: Is this a regular guidestone (no type field)? → include (paid)
execute unless data storage evercraft:guild warp.check.type run data modify storage evercraft:guild warp.check.warp_free set value 0b
execute unless data storage evercraft:guild warp.check.type run data modify storage evercraft:guild warp.filtered append from storage evercraft:guild warp.check

# Remove and recurse
data remove storage evercraft:guild warp.working[0]
function evercraft:guild/gui/menu/warp/filter with storage evercraft:guild warp.filter_ctx
