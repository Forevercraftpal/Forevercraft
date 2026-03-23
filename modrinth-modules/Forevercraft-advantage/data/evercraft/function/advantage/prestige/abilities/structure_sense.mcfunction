# Explorer P1: Structure Sense — alert when inside a structure's bounding box
# Runs every 5 seconds via tick/main for players with adv.pa_expl1=1
# Uses cooldown to avoid repeated alerts (30s after alert)

# Check if inside any known structure
execute unless predicate evercraft:advantage/near_structure run return 0

# Alert! Show actionbar + play sound
title @s actionbar [{text:"Structure nearby!",color:"dark_aqua"}]
playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.5 1.5

# Set 30-second cooldown (600 ticks)
scoreboard players set @s adv.pa_expl1_cd 600
