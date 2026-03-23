# Showcase — Player clicked a pin slot (macro)
# $(slot) = which slot (0/1/2)
# Run as interaction entity, find owning player

# Clear interaction data
data remove entity @s interaction

# Find the owning player and run the picker
$scoreboard players set #sc_clicked_slot ec.temp $(slot)
execute as @a[tag=ec.sc_in_showcase,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp run function evercraft:codex/friends/showcase/do_click_slot
