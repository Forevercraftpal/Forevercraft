# Grand Illusionist — Levitation Strike
# Random fake copy gives Levitation to nearby players

execute as @e[tag=ec.rd_gi_fake,limit=1,sort=random] at @s run effect give @a[tag=ec.rd_participant,distance=..3] levitation 3 0

# VFX
execute as @e[tag=ec.rd_gi_fake,limit=1,sort=random] at @s if entity @a[tag=ec.rd_participant,distance=..3] run particle minecraft:enchant ~ ~1 ~ 1 0.5 1 0.5 10
