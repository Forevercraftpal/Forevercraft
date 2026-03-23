# The Iron Phalanx — Phalanx Ghost Charge (Phase 3)
# Run as boss at boss. Charge 10 blocks toward nearest player, damage in path.

# Find nearest player and face them
execute at @s facing entity @a[tag=ic.player,limit=1,sort=nearest] feet positioned as @s run tp @s ~ ~ ~ ~ ~

# Charge VFX announcement
playsound minecraft:entity.ravager.roar master @a[distance=..30] ~ ~ ~ 0.5 1.5
particle dust{color:[0.8,0.8,0.8],scale:1.5} ~ ~1 ~ 0.3 0.3 0.3 0.05 10

# Perform charge in 5 steps of 2 blocks each
# Step 1
execute at @s run tp @s ^ ^ ^2
execute at @s as @a[tag=ic.player,distance=..2] run damage @s 15 minecraft:mob_attack
execute at @s run function evercraft:castle/iron_phalanx/charge_trail

# Step 2
execute at @s run tp @s ^ ^ ^2
execute at @s as @a[tag=ic.player,distance=..2] run damage @s 15 minecraft:mob_attack
execute at @s run function evercraft:castle/iron_phalanx/charge_trail

# Step 3
execute at @s run tp @s ^ ^ ^2
execute at @s as @a[tag=ic.player,distance=..2] run damage @s 15 minecraft:mob_attack
execute at @s run function evercraft:castle/iron_phalanx/charge_trail

# Step 4
execute at @s run tp @s ^ ^ ^2
execute at @s as @a[tag=ic.player,distance=..2] run damage @s 15 minecraft:mob_attack
execute at @s run function evercraft:castle/iron_phalanx/charge_trail

# Step 5
execute at @s run tp @s ^ ^ ^2
execute at @s as @a[tag=ic.player,distance=..2] run damage @s 15 minecraft:mob_attack
execute at @s run function evercraft:castle/iron_phalanx/charge_trail

# Charge end — slam sound
playsound minecraft:entity.iron_golem.damage master @a[distance=..20] ~ ~ ~ 1.0 0.5
particle explosion ~ ~0.5 ~ 0.5 0.2 0.5 0.05 5
