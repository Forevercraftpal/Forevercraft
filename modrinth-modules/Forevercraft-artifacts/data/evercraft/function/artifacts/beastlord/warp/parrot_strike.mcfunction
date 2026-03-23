# Beastlord — Parrot Warp Strike (per-parrot)
# Runs as each parrot near the beastlord player
# Parrots kill small animals (rabbits, fish, chickens, etc.) instantly

# Verify this parrot belongs to the beastlord player
execute on owner unless entity @s[tag=bl.owner] run return 0

# Find nearest small prey within 16 blocks of the parrot
execute at @s as @e[type=#evercraft:beastlord/small_prey,distance=..16,sort=nearest,limit=1] run tag @s add bl.warp_target

# Also target baby zombies and variants (NBT filter can't be in entity tags)
execute unless entity @e[tag=bl.warp_target] at @s as @e[type=minecraft:zombie,nbt={IsBaby:1b},distance=..16,sort=nearest,limit=1] run tag @s add bl.warp_target
execute unless entity @e[tag=bl.warp_target] at @s as @e[type=minecraft:husk,nbt={IsBaby:1b},distance=..16,sort=nearest,limit=1] run tag @s add bl.warp_target
execute unless entity @e[tag=bl.warp_target] at @s as @e[type=minecraft:drowned,nbt={IsBaby:1b},distance=..16,sort=nearest,limit=1] run tag @s add bl.warp_target
execute unless entity @e[tag=bl.warp_target] at @s as @e[type=minecraft:zombie_villager,nbt={IsBaby:1b},distance=..16,sort=nearest,limit=1] run tag @s add bl.warp_target

# No prey? Exit
execute unless entity @e[tag=bl.warp_target] run return 0

# Soul particles at parrot departure
execute at @s run particle soul ~ ~0.3 ~ 0.2 0.3 0.2 0.03 8

# Teleport parrot to prey
execute at @e[tag=bl.warp_target,limit=1] run tp @s ~ ~ ~

# Soul particles at arrival
execute at @s run particle soul ~ ~0.3 ~ 0.2 0.3 0.2 0.03 8

# Instant kill the prey
kill @e[tag=bl.warp_target,limit=1]

# Wing flap + soul escape sound
execute at @s run playsound minecraft:entity.parrot.fly player @a ~ ~ ~ 0.8 1.2
execute at @s run playsound minecraft:particle.soul_escape player @a ~ ~ ~ 0.5 1.4

# Cleanup (target is dead, but remove tag just in case)
tag @e[tag=bl.warp_target] remove bl.warp_target
