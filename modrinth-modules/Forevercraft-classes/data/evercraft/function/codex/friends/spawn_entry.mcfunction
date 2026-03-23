# Codex Friends — Spawn one friend entry (macro)
# Macro arg: y (Y position)
# Reads from temp: entry_cid, entry_hearts, entry_uuid3, level_color, level_name, entry_title

# Store y to temp so inner macro can use it alongside other temp data
$data modify storage evercraft:friends temp.entry_y set value $(y)
function evercraft:codex/friends/spawn_entry_inner with storage evercraft:friends temp
