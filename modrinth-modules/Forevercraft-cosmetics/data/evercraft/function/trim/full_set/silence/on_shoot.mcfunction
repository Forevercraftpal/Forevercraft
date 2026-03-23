# Triggered when player shoots Sonic Boom bow
# This runs as the player who shot

# Tag self as boomer (immune to own boom)
tag @s add trim_boomer

# Kill the nearest arrow we just shot
kill @e[type=arrow,distance=..10,limit=1,sort=nearest]

# Fire the boom from our eyes
execute at @s anchored eyes positioned ^ ^ ^2 anchored feet run function evercraft:trim/full_set/silence/boom1

# Schedule removal of tag
schedule function evercraft:trim/full_set/silence/boom3 1t replace