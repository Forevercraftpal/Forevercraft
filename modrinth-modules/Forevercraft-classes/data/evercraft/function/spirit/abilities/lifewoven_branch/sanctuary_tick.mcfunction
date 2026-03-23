# Lifewoven Branch — Sanctuary Per-Tick Processing
# Run as sanctuary marker, at marker position
# Allies (players): Regen II + Resistance I, clear negatives
# Enemies (non-players): Weakness II
# Radius: 8 blocks (spirit: 10, but radius is hardcoded here as 8 for simplicity)

# Apply effects every 20 ticks
execute store result score #sanc_mod ec.temp run time query gametime
scoreboard players operation #sanc_mod ec.temp %= #20 ec.const
execute unless score #sanc_mod ec.temp matches 0 run return 0

# Allies within radius: Regeneration II + Resistance I (3s to bridge 20-tick gap)
effect give @a[distance=..10] regeneration 3 1 true
effect give @a[distance=..10] resistance 3 0 true

# Enemies within radius: Weakness II
effect give @e[distance=..10,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame] weakness 3 1 false

# Clear negative effects from allies entering the sanctuary
execute as @a[distance=..10] run function evercraft:spirit/abilities/lifewoven_branch/clear_negatives

# Sanctuary visual particles
particle happy_villager ~ ~0.3 ~ 5.0 0.3 5.0 0.1 8
particle dust{color:[0.2,1.0,0.3],scale:1.2} ~ ~0.1 ~ 4.0 0.0 4.0 0.01 5
particle enchant ~ ~0.5 ~ 4.0 0.3 4.0 0.5 5
