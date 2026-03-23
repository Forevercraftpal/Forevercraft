# Sweep Attack 3 - Deals 4 damage to nearby enemies
# Replaces Sweeping Edge 3

advancement revoke @s only evercraft:artifacts/abilities/melee/sweep_attack_3_trigger

# Deal damage to nearby enemies (excluding the primary target)
execute at @s as @e[type=!player,type=!item,type=!experience_orb,distance=..3,limit=5] unless entity @s[nbt={HurtTime:10s}] run damage @s 4 minecraft:player_attack

# Visual feedback (sweep effect)
execute at @s run particle sweep_attack ~ ~0.8 ~ 0.5 0.2 0.5 0 3
playsound minecraft:entity.player.attack.sweep player @s ~ ~ ~ 0.8 1.0
