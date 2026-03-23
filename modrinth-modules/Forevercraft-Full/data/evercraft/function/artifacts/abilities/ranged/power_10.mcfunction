# Ranged Power 10 - +10 bonus arrow damage
# Triggered when player with ranged_power:10 hits entity with arrow

advancement revoke @s only evercraft:artifacts/abilities/ranged/power_10_trigger

# Deal 10 extra damage to the target hit by arrow
execute at @s as @e[type=!player,distance=..50,limit=1,sort=nearest,nbt={HurtTime:10s}] run damage @s 10 minecraft:arrow

# Visual feedback - more particles for higher power
execute at @s run particle crit ~ ~1 ~ 0.3 0.3 0.3 0.1 14
playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 0.5 1.5
