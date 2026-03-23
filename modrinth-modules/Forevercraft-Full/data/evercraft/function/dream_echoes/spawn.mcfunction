# ============================================================
# Dream Echoes — Spawn Echo Marker
# Called at the location where a mythical artifact was found
# Run as the animation armor_stand, at the crate/barrel position
# evercraft:campfire temp.artifact is already set by the caller
# ============================================================

# Summon persistent marker at this location
summon marker ~ ~ ~ {Tags:["ec.dream_echo","ec.dream_echo_new"]}

# Store what was found (reads from campfire temp, set by mythical finish handler)
data modify entity @e[type=marker,tag=ec.dream_echo_new,distance=..2,limit=1] data.artifact set from storage evercraft:campfire temp.artifact

# Spawn paired interaction entity for player click
summon interaction ~ ~ ~ {Tags:["ec.dream_echo_click"],width:1.0f,height:1.5f,response:1b}

tag @e[type=marker,tag=ec.dream_echo_new] remove ec.dream_echo_new

# Visual burst to celebrate the echo being born
particle end_rod ~ ~0.5 ~ 0.3 0.5 0.3 0.02 10 force
playsound minecraft:block.amethyst_block.chime master @a[distance=..16] ~ ~ ~ 0.3 1.4
