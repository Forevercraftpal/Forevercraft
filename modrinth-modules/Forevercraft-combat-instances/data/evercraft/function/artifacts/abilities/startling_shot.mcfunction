# Startling Shot — Rapid Crossbow (Common Hunter)
# Ranged hit: target gets Mining Fatigue I (2s) — stunned/staggered

advancement revoke @s only evercraft:artifacts/abilities/startling_shot_trigger

# Apply Mining Fatigue I to hit target
execute at @s as @e[type=!player,distance=..50,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @s mining_fatigue 2 0 false

# Visual feedback
execute at @s as @e[type=!player,distance=..50,limit=1,sort=nearest,nbt={HurtTime:10s}] at @s run particle crit ~ ~1 ~ 0.2 0.3 0.2 0.1 8
playsound minecraft:entity.player.attack.knockback player @s ~ ~ ~ 0.5 1.5

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
