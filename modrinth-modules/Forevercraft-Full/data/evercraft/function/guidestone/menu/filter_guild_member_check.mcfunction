# Guidestone Menu — Macro: check guild member list for uuid3
# Macro args: guild_id, uuid3 (both from guild_check storage)
$execute if data storage evercraft:guild guilds."$(guild_id)".members[{uuid3:$(uuid3)}] run data modify storage evercraft:guidestone filtered append from storage evercraft:guidestone filter_check
