# Home Pet Warp Strike — Per-Pet
# Runs as: each home pet (wolf/cat/parrot/snow_golem) near the player
# Finds nearest hostile, teleports to it, deals damage

# Find nearest hostile within 16 blocks of the pet
execute at @s as @e[type=#evercraft:combat_targets,distance=..16,sort=nearest,limit=1] run tag @s add hs.warp_target

# No target? Exit
execute unless entity @e[tag=hs.warp_target] run return 0

# Soul particles at departure
execute at @s run particle soul ~ ~0.5 ~ 0.3 0.5 0.3 0.05 12

# Teleport pet to target
execute at @e[tag=hs.warp_target,limit=1] run tp @s ~ ~ ~

# Arrival particles + sound
execute at @s run particle soul ~ ~0.5 ~ 0.3 0.5 0.3 0.05 12
execute at @s run particle enchant ~ ~1 ~ 0.3 0.5 0.3 1 8
execute at @e[tag=hs.warp_target,limit=1] run playsound minecraft:particle.soul_escape player @a ~ ~ ~ 0.7 1.3

# Deal scaled damage (set by calc_damage, stored in evercraft:pet_warp {damage})
function evercraft:housing/pet_warp/do_damage with storage evercraft:pet_warp

# Creeper safety: freeze creeper for 3s, knock it back, teleport pet to owner
execute if entity @e[tag=hs.warp_target,type=creeper,limit=1] run effect give @e[tag=hs.warp_target,type=creeper,limit=1] slowness 2 127 true
execute if entity @e[tag=hs.warp_target,type=creeper,limit=1] run data modify entity @e[tag=hs.warp_target,type=creeper,limit=1] Motion set value [0.0d,0.6d,0.0d]
execute if entity @e[tag=hs.warp_target,type=creeper,limit=1] run tp @s @a[limit=1,sort=nearest]
execute if entity @e[tag=hs.warp_target,type=creeper,limit=1] at @s run particle soul ~ ~0.5 ~ 0.3 0.3 0.3 0.03 8

# Cleanup
tag @e[tag=hs.warp_target] remove hs.warp_target
