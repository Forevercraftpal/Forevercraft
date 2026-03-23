# Showcase — Dream rate click handler
# @s = interaction entity
data remove entity @s interaction
execute as @a[tag=ec.sc_in_showcase,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp run function evercraft:dreams/check
