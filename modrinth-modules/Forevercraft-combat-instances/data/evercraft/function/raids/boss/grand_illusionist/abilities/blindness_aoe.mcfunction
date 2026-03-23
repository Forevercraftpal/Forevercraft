# Grand Illusionist — Blindness AoE
# Blindness effect in 4-block radius from a random fake copy

execute as @e[tag=ec.rd_gi_fake,limit=1,sort=random] at @s run effect give @a[tag=ec.rd_participant,distance=..4] blindness 3 0

# VFX
execute as @e[tag=ec.rd_gi_fake,limit=1,sort=random] at @s run particle minecraft:smoke ~ ~1 ~ 2 0.5 2 0.05 15
execute as @e[tag=ec.rd_gi_fake,limit=1,sort=random] at @s if entity @a[tag=ec.rd_participant,distance=..4] run tellraw @a[tag=ec.rd_participant] [{"text":"  "},{"text":"An illusion blinds you!","color":"dark_gray","italic":true}]
execute as @e[tag=ec.rd_gi_fake,limit=1,sort=random] at @s run playsound minecraft:entity.illusioner.cast_spell hostile @a[tag=ec.rd_participant,distance=..10] ~ ~ ~ 1.0 0.8
