# Dancer Flurry — Per-tick during active flurry
# Run as dancer at @s anchored eyes, ec.dn_flurry >= 1

# Decrement flurry timer
scoreboard players remove @s ec.dn_flurry 1

# Decrement swing timer
scoreboard players remove @s ec.dn_swing 1

# Fire auto-swing when timer hits 0
execute if score @s ec.dn_swing matches ..0 run function evercraft:artifacts/dancer/flurry_swing

# Ambient particles
particle minecraft:enchant ~ ~1 ~ 0.3 0.3 0.3 0.5 2

# Check if flurry expired
execute if score @s ec.dn_flurry matches ..0 run function evercraft:artifacts/dancer/deactivate_flurry
