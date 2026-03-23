# Showcase — Render filled slot for other player (read-only)

data modify storage evercraft:showcase temp.render set from storage evercraft:showcase temp.pin
data modify storage evercraft:showcase temp.render.y_pos set from storage evercraft:showcase temp.y_pos
function evercraft:codex/friends/showcase/render_other_filled_inner with storage evercraft:showcase temp.render
