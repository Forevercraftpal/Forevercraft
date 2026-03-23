# Showcase — Teleport button click handler
# @s = interaction entity

# Clear interaction data
data remove entity @s interaction

# Find the owning player and delegate
execute as @a[tag=ec.sc_view_other,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp at @s run function evercraft:codex/friends/showcase/do_tp
