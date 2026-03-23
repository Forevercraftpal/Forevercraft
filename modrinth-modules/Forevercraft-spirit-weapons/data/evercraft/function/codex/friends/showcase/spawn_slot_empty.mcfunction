# Showcase — Spawn empty slot
# Reads temp.y_pos, temp.y_btn, temp.slot from storage

data modify storage evercraft:showcase temp.render.y_pos set from storage evercraft:showcase temp.y_pos
data modify storage evercraft:showcase temp.render.y_btn set from storage evercraft:showcase temp.y_btn
data modify storage evercraft:showcase temp.render.slot set from storage evercraft:showcase temp.slot
function evercraft:codex/friends/showcase/render_empty_slot with storage evercraft:showcase temp.render
