# Adaptive Edge — Droid Dancer's Sword (Mythical)
# 15% chance to heal 2 hearts on hit

# Revoke for re-trigger
advancement revoke @s only evercraft:artifacts/abilities/adaptive_edge_trigger

# 15% chance (150 out of 1000)
execute store result score #roll ec.var run random value 1..1000

# Heal 2 hearts (instant_health amp 0 = 4 HP = 2 hearts)
execute if score #roll ec.var matches 1..150 run effect give @s instant_health 1 0 true
execute if score #roll ec.var matches 1..150 run particle heart ~ ~2 ~ 0.3 0.2 0.3 0 3
execute if score #roll ec.var matches 1..150 run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.5 2.0

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
