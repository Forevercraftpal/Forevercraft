# Showcase — Render empty slot for other player (read-only)

data modify storage evercraft:showcase temp.render.y_pos set from storage evercraft:showcase temp.y_pos
function evercraft:codex/friends/showcase/render_other_empty_inner with storage evercraft:showcase temp.render
