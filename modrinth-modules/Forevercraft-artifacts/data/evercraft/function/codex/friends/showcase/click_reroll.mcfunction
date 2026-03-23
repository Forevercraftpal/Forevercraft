# Showcase — Reroll picker (re-randomize the 5 picks)
# Run as interaction entity

data remove entity @s interaction

execute as @a[tag=ec.sc_in_picker,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp run function evercraft:codex/friends/showcase/do_reroll
