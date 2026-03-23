# Royal Trident (Rare) — Melee: Royal Guard
# Health Boost I (10s) on self
# Cooldown: 12s

scoreboard players set @s ec.jv_cd 12

effect give @s health_boost 10 0 false
execute at @s run particle heart ~ ~2 ~ 0.3 0.3 0.3 0 3
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.5 1.5

scoreboard players add @s ach.weapon_abilities 1
