# Showcase — Spawn filled slot
# Reads temp.y_pos, temp.y_btn, temp.slot, temp.pin from storage

# Copy data for macro call
data modify storage evercraft:showcase temp.render set from storage evercraft:showcase temp.pin
data modify storage evercraft:showcase temp.render.y_pos set from storage evercraft:showcase temp.y_pos
data modify storage evercraft:showcase temp.render.y_btn set from storage evercraft:showcase temp.y_btn
data modify storage evercraft:showcase temp.render.slot set from storage evercraft:showcase temp.slot
function evercraft:codex/friends/showcase/render_filled_slot with storage evercraft:showcase temp.render
