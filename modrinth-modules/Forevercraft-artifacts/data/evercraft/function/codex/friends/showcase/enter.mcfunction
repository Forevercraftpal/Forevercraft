# Showcase — Enter (click handler)
# @s = interaction entity (from friends check_clicks)

# Clear interaction data
data remove entity @s interaction

# Find the owning player and delegate
execute as @a[tag=Adv.InMenu,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp at @s run function evercraft:codex/friends/showcase/do_enter
