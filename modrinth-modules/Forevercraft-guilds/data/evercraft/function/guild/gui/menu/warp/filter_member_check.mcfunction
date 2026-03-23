# Guild Warp — Macro: check guild member list for uuid3
# Macro args: guild_id, uuid3
# If member, append hearthstone to filtered[] with warp_free:1b
$execute if data storage evercraft:guild guilds."$(guild_id)".members[{uuid3:$(uuid3)}] run data modify storage evercraft:guild warp.check.warp_free set value 1b
$execute if data storage evercraft:guild guilds."$(guild_id)".members[{uuid3:$(uuid3)}] run data modify storage evercraft:guild warp.filtered append from storage evercraft:guild warp.check
