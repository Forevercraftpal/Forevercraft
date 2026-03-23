# Royal Trident (Rare) — Thrown: Royal Blessing
# Heal self 2 hearts (instant_health amp 0)
# Cooldown: 12s

scoreboard players set @s ec.jv_cd 12

effect give @s instant_health 1 0 false
execute at @s run particle heart ~ ~2 ~ 0.5 0.3 0.5 0 5
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.5 1.2

scoreboard players add @s ach.weapon_abilities 1
