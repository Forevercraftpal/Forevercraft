# Codex Friends — Back to list from detail view
# @s = interaction entity

data remove entity @s interaction

execute as @p[tag=ec.fr_detail_view,distance=..5] at @s facing entity @e[type=marker,tag=Adv.MenuAnchor,distance=..5,limit=1,sort=nearest] feet run function evercraft:codex/friends/do_detail_back
