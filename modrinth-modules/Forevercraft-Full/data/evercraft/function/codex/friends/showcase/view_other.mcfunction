# Showcase — View another player's showcase (from friend detail)
# Run as interaction entity

data remove entity @s interaction

execute as @a[tag=ec.fr_detail_view,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp run function evercraft:codex/friends/showcase/do_view_other
