# Showcase — Spawn single slot
# Reads temp.slot, temp.y_pos, temp.y_btn, temp.pin from storage

# Route to filled or empty based on whether id is set
execute unless data storage evercraft:showcase temp.pin{id:""} run function evercraft:codex/friends/showcase/spawn_slot_filled
execute if data storage evercraft:showcase temp.pin{id:""} run function evercraft:codex/friends/showcase/spawn_slot_empty
