# Wyrmcleaver — Aegis Expire
# Remove aegis zone when timer runs out

# Final burst VFX at marker position
execute as @e[tag=ec.sp_aegis,sort=nearest,limit=1,distance=..20] at @s run particle flame ~ ~0.5 ~ 4.0 1.0 4.0 0.1 50
execute as @e[tag=ec.sp_aegis,sort=nearest,limit=1,distance=..20] at @s run particle lava ~ ~0.5 ~ 3.0 0.5 3.0 0.05 20
execute as @e[tag=ec.sp_aegis,sort=nearest,limit=1,distance=..20] at @s run particle poof ~ ~0.5 ~ 2.0 0.5 2.0 0.05 15

# Kill aegis marker
kill @e[tag=ec.sp_aegis,sort=nearest,limit=1,distance=..20]

# Remove active tag
tag @s remove ec.sp_aegis_active

# SFX
playsound minecraft:entity.blaze.death player @a ~ ~ ~ 0.5 1.2

title @s actionbar [{"text":"Aegis faded...","color":"gray","italic":true}]
