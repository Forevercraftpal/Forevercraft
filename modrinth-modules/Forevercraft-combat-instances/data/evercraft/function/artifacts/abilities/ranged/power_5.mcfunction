# Ranged Power 5 - +5 bonus arrow damage
# Triggered when player with ranged_power:5 hits entity with arrow

advancement revoke @s only evercraft:artifacts/abilities/ranged/power_5_trigger

# Deal 5 extra damage to the target hit by arrow
execute at @s as @e[type=!player,distance=..50,limit=1,sort=nearest,nbt={HurtTime:10s}] run damage @s 5 minecraft:arrow

# Visual feedback - more particles for higher power
execute at @s run particle crit ~ ~1 ~ 0.3 0.3 0.3 0.1 9
playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 0.5 1.25
