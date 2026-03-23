# Glaive (Ornate) — On Hit: Sweeping Strike
# Damages nearby enemies around the primary target

# Find the entity we just hit and tag it
execute at @s as @e[type=!player,distance=..6,sort=nearest,limit=1,nbt={HurtTime:10s}] run tag @s add bl.sweep_primary

# Exit if no target found
execute unless entity @e[tag=bl.sweep_primary] run return 0

# Damage nearby entities around the primary target (up to 4, within 3 blocks)
execute at @e[tag=bl.sweep_primary,limit=1] as @e[type=!player,distance=..3,limit=4,sort=nearest] unless entity @s[tag=bl.sweep_primary] run function evercraft:artifacts/beastlord/on_hit/glaive_sweep

# Sound: sweeping attack
execute at @e[tag=bl.sweep_primary,limit=1] run playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1.0 0.9

# Cleanup
tag @e[tag=bl.sweep_primary] remove bl.sweep_primary
