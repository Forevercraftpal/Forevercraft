# Toxic Edge - Wither effect on hit
# Applies wither II for 3 seconds

# Revoke advancement so it can trigger again
advancement revoke @s only evercraft:artifacts/abilities/toxic_edge_trigger

# Apply wither to nearest hurt entity (wither affects all mobs)
execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @s wither 3 1 false

# Visual/audio feedback
execute at @s run particle smoke ~ ~1 ~ 0.3 0.5 0.3 0.02 15
playsound minecraft:entity.wither.ambient player @s ~ ~ ~ 0.3 2

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
