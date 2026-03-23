# Grand Illusionist — Poison Cloud
# Random fake copy creates a poison area

execute as @e[tag=ec.rd_gi_fake,limit=1,sort=random] at @s run effect give @a[tag=ec.rd_participant,distance=..3] poison 4 1

# VFX
execute as @e[tag=ec.rd_gi_fake,limit=1,sort=random] at @s run particle minecraft:item_slime ~ ~0.5 ~ 2 0.5 2 0.05 15
execute as @e[tag=ec.rd_gi_fake,limit=1,sort=random] at @s run playsound minecraft:entity.witch.throw hostile @a[tag=ec.rd_participant,distance=..10] ~ ~ ~ 0.8 0.8
