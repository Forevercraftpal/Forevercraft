# Precision Bolt — Mechanical Shortbow (Common Archer)
# Ranged hit: +2 bonus damage — the gears amplify each shot's impact

advancement revoke @s only evercraft:artifacts/abilities/precision_bolt_trigger

# Deal 2 extra damage to the hit target
execute at @s as @e[type=!player,distance=..50,limit=1,sort=nearest,nbt={HurtTime:10s}] run damage @s 2 minecraft:arrow

# Visual feedback
execute at @s as @e[type=!player,distance=..50,limit=1,sort=nearest,nbt={HurtTime:10s}] at @s run particle crit ~ ~1 ~ 0.2 0.3 0.2 0.1 8
playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 0.5 1.2

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
