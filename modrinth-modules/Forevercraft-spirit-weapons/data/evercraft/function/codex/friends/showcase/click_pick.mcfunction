# Showcase — Player selected an achievement from the picker (macro)
# $(pick) = index in temp.picks (0-4)
# Run as interaction entity

data remove entity @s interaction

$scoreboard players set #sc_picked ec.temp $(pick)
execute as @a[tag=ec.sc_in_picker,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp run function evercraft:codex/friends/showcase/do_click_pick
