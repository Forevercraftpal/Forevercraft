# Inscription Stone — Growth (Verdant Glyph)
# Randomly bone meal crops within 48 blocks each tick cycle (~5s)
# Picks 1 random spot and runs a grow_pass (1 stage) in a 9x3x9 patch
# Reuses the growth serum's grow_pass logic but at random offsets for natural feel

execute store result storage evercraft:inscription gx int 1 run random value -48..48
execute store result storage evercraft:inscription gz int 1 run random value -48..48
function evercraft:inscription/effects/growth_spot with storage evercraft:inscription
