# Mount Charge — Hit a hostile mob
# @s = hostile mob within range of charging mount

# Skip if this mob was recently hit (per-mob cooldown via tag)
execute if entity @s[tag=ec.bd_charge_hit] run return fail

# Calculate damage based on speed (8 base + speed/4 bonus, capped at 15)
# Simplified: use flat 10 damage for now
scoreboard players set #bd_charge_dmg ec.temp 10

# Buddy mount bonus: +50%
execute as @a[distance=..5,scores={ec.bd_charging=1}] if entity @e[tag=ec.bd_buddy,type=#evercraft:tameable_companions,distance=..5,limit=1] run scoreboard players set #bd_charge_dmg ec.temp 15

# Best buddy mount bonus: +100% (total)
execute as @a[distance=..5,scores={ec.bd_charging=1}] if entity @e[tag=ec.bd_best,type=#evercraft:tameable_companions,distance=..5,limit=1] run scoreboard players set #bd_charge_dmg ec.temp 20

# Apply damage
execute store result score #bd_dmg_apply ec.temp run scoreboard players get #bd_charge_dmg ec.temp
damage @s 10 minecraft:mob_attack

# Knockback (push mob away from player)
execute as @a[distance=..5,scores={ec.bd_charging=1}] at @s run function evercraft:buddy/mount/charge/knockback

# Tag mob as recently hit (3-second cooldown)
tag @s add ec.bd_charge_hit
schedule function evercraft:buddy/mount/charge/clear_hit 60t append

# Visual + sound
particle minecraft:explosion ~ ~0.5 ~ 0.3 0.3 0.3 0 3
playsound minecraft:entity.player.attack.knockback hostile @a[distance=..16] ~ ~ ~ 1 0.8

# Set player charge cooldown (3 seconds)
execute as @a[distance=..5,scores={ec.bd_charging=1}] run scoreboard players set @s ec.bd_charge_cd 3
