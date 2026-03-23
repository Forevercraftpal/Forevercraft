# Quartz XP orb multiplier — called per-tick for nearby XP orbs
# Run as XP orb entity

scoreboard players set @s te.quartz 0
execute as @p[distance=..24,tag=te.quartz_wearing] run scoreboard players operation @s te.quartz = @s te.quartz

execute if score @s te.quartz matches 1 store result entity @s Value double 0.01 run data get entity @s Value 110
execute if score @s te.quartz matches 2 store result entity @s Value double 0.01 run data get entity @s Value 120
execute if score @s te.quartz matches 3 store result entity @s Value double 0.01 run data get entity @s Value 130
execute if score @s te.quartz matches 4 store result entity @s Value double 0.01 run data get entity @s Value 140

tag @s add quartz_xp_orb
