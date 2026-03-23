# Guild Warp — Check if hearthstone owner is a guild member
# Macro arg: guild_id
# If yes, append to filtered[] with warp_free:1b

# Build combined args for the check
data modify storage evercraft:guild warp.member_check.guild_id set from storage evercraft:guild warp.filter_ctx.guild_id
data modify storage evercraft:guild warp.member_check.uuid3 set from storage evercraft:guild warp.check.uuid3

# Check if this uuid3 exists in the guild member list
function evercraft:guild/gui/menu/warp/filter_member_check with storage evercraft:guild warp.member_check
