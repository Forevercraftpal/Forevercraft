# Showcase — Spawn single read-only slot for other player
# Reads temp.slot, temp.y_pos, temp.pin from storage

execute unless data storage evercraft:showcase temp.pin{id:""} run function evercraft:codex/friends/showcase/render_other_filled
execute if data storage evercraft:showcase temp.pin{id:""} run function evercraft:codex/friends/showcase/render_other_empty
