# Guidestone Menu — Check if a hearthstone's owner is in the guild
# Called from filter_guild when entry has type:"hearthstone"
# filter_check has the current registry entry with uuid3
# If match, append to filtered[]

# Build combined args: guild_id + uuid3 in one storage path
data modify storage evercraft:guidestone guild_check.guild_id set from storage evercraft:guidestone menu_ctx.guild_id
data modify storage evercraft:guidestone guild_check.uuid3 set from storage evercraft:guidestone filter_check.uuid3

# Check if this uuid3 exists in the guild member list
function evercraft:guidestone/menu/filter_guild_member_check with storage evercraft:guidestone guild_check
