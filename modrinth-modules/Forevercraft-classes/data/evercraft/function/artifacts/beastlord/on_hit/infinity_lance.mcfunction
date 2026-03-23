# Infinity Lance (Exquisite) — On Hit: Piercing Charge
# Damages all entities in a line in front of the player

# Line pierce: damage entities along the player's facing direction
# Check 4 positions along ^ ^ ^N (local forward), 1.5 block radius each
execute at @s positioned ^ ^ ^2 as @e[type=!player,distance=..1.5,limit=3] run function evercraft:artifacts/beastlord/on_hit/infinity_lance_pierce
execute at @s positioned ^ ^ ^3 as @e[type=!player,distance=..1.5,limit=3] run function evercraft:artifacts/beastlord/on_hit/infinity_lance_pierce
execute at @s positioned ^ ^ ^4 as @e[type=!player,distance=..1.5,limit=3] run function evercraft:artifacts/beastlord/on_hit/infinity_lance_pierce
execute at @s positioned ^ ^ ^5 as @e[type=!player,distance=..1.5,limit=3] run function evercraft:artifacts/beastlord/on_hit/infinity_lance_pierce

# Clean up pierce tags
tag @e[tag=bl.pierced] remove bl.pierced

# Particles along the pierce line
execute at @s run particle sonic_boom ^ ^ ^2 0 0 0 0 1
execute at @s run particle sonic_boom ^ ^ ^4 0 0 0 0 1

# Sound: piercing charge
execute at @s run playsound minecraft:entity.breeze.shoot player @a ~ ~ ~ 0.8 1.5
