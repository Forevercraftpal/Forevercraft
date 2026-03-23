# Codex Friends — Remove friend from detail view
# @s = interaction entity

data remove entity @s interaction

execute as @p[tag=ec.fr_detail_view,distance=..5] run function evercraft:codex/friends/do_detail_remove
