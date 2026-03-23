# Dragonmaster Lance — Apply dragon pierce to target
# Runs as the hurt entity

# Ender Dragon: massive bonus damage
execute if entity @s[type=ender_dragon] run damage @s 10 minecraft:mob_attack
execute if entity @s[type=ender_dragon] at @s run particle dragon_breath ~ ~2 ~ 2 2 2 0.1 30
execute if entity @s[type=ender_dragon] at @s run playsound minecraft:entity.ender_dragon.growl player @a ~ ~ ~ 0.8 1.2
execute if entity @s[type=ender_dragon] run return 0

# End-type mobs: strong bonus damage
execute if entity @s[type=enderman] run damage @s 5 minecraft:mob_attack
execute if entity @s[type=endermite] run damage @s 5 minecraft:mob_attack
execute if entity @s[type=shulker] run damage @s 5 minecraft:mob_attack
execute if entity @s[type=phantom] run damage @s 5 minecraft:mob_attack
execute if entity @s[type=enderman] at @s run particle dragon_breath ~ ~1 ~ 0.3 0.8 0.3 0.05 15
execute if entity @s[type=endermite] at @s run particle dragon_breath ~ ~0.3 ~ 0.2 0.2 0.2 0.05 10
execute if entity @s[type=shulker] at @s run particle dragon_breath ~ ~0.5 ~ 0.3 0.3 0.3 0.05 12
execute if entity @s[type=phantom] at @s run particle dragon_breath ~ ~0.3 ~ 0.5 0.2 0.5 0.05 12
execute if entity @s[type=enderman] run return 0
execute if entity @s[type=endermite] run return 0
execute if entity @s[type=shulker] run return 0
execute if entity @s[type=phantom] run return 0

# All other mobs: moderate bonus damage
damage @s 2 minecraft:mob_attack
execute at @s run particle dragon_breath ~ ~0.5 ~ 0.2 0.3 0.2 0.03 6
