# Inscription Stone — Mysterious Effect (Arcanum Glyph)
# Random positive effect to nearby players each tick cycle
# Picks 1 of 6 effects based on random score

# Roll 1-6
execute store result score #wm_roll ec.temp run random value 1..6

# Apply the rolled effect (7s duration covers 5s tick + buffer)
execute if score #wm_roll ec.temp matches 1 run effect give @a[distance=..48] speed 7 0 true
execute if score #wm_roll ec.temp matches 2 run effect give @a[distance=..48] strength 7 0 true
execute if score #wm_roll ec.temp matches 3 run effect give @a[distance=..48] regeneration 7 0 true
execute if score #wm_roll ec.temp matches 4 run effect give @a[distance=..48] jump_boost 7 0 true
execute if score #wm_roll ec.temp matches 5 run effect give @a[distance=..48] resistance 7 0 true
execute if score #wm_roll ec.temp matches 6 run effect give @a[distance=..48] haste 7 0 true
