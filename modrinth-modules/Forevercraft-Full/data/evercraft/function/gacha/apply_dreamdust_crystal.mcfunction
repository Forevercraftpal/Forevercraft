# Apply Dreamdust Crystal — Permanent +2.5 luck modifier
# Only called if player has NOT already used one

# Mark as used
tag @s add ec.dreamdust_used

# Apply permanent luck modifier
attribute @s luck modifier add evercraft:dreamdust_crystal 2.5 add_value

# Celebration effects
particle minecraft:totem_of_undying ~ ~1.5 ~ 0.5 1 0.5 0.5 50 force @s
particle minecraft:end_rod ~ ~2 ~ 0.3 0.5 0.3 0.05 30 force @s
particle minecraft:witch ~ ~1 ~ 0.3 0.5 0.3 0.02 20 force @s
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1.2
playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 1 0.8

# Title
title @s subtitle {"text":"Permanent +2.5 Dream Rate","color":"aqua"}
title @s title {"text":"Dreamdust Crystal","color":"#E0B0FF","bold":true}

# Chat notification
tellraw @s [{"text":"\u2726\u2726\u2726 ","color":"#E0B0FF"},{"text":"Dreamdust Crystal consumed! ","color":"light_purple"},{"text":"Permanent +2.5 Dream Rate!","color":"aqua","bold":true},{"text":" \u2726\u2726\u2726","color":"#E0B0FF"}]
