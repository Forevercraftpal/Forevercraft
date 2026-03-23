# Codex Friends — Cycle title on click
# @s = interaction entity

data remove entity @s interaction

execute as @p[tag=ec.fr_detail_view,distance=..5] run function evercraft:codex/friends/do_detail_title
