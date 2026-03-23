# Lance — Apply target mark to hit entity
# Runs as the hurt entity

# Mark target for pet warp priority
tag @s add bl.marked
effect give @s glowing 5 0 true

# Visual: targeting reticle particles
execute at @s run particle soul ~ ~1 ~ 0.1 0.5 0.1 0.02 6

# Sound: marking ping
execute at @s run playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 0.8 1.5
