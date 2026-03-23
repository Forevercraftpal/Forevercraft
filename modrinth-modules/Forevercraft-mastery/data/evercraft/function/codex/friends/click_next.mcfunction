# Codex Friends — Next page click
# @s = interaction entity

data remove entity @s interaction

execute as @p[tag=Adv.InMenu,distance=..5] if score @s adv.gui_section matches 12 at @s facing entity @e[type=marker,tag=Adv.MenuAnchor,distance=..5,limit=1,sort=nearest] feet run function evercraft:codex/friends/do_next
