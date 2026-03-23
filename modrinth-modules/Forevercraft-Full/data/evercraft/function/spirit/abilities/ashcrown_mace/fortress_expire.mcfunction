# Ashcrown Mace — Fortress Expire
# Remove fortress zone when timer runs out

# Final burst particles at marker position
execute as @e[tag=ec.sp_fortress_marker,sort=nearest,limit=1,distance=..20] at @s run particle ash ~ ~0.5 ~ 4.0 1.0 4.0 0.1 40
execute as @e[tag=ec.sp_fortress_marker,sort=nearest,limit=1,distance=..20] at @s run particle poof ~ ~0.5 ~ 2.0 0.5 2.0 0.05 15

# Kill fortress marker
kill @e[tag=ec.sp_fortress_marker,sort=nearest,limit=1,distance=..20]

# Remove active tag
tag @s remove ec.sp_fortress_active

# SFX
playsound minecraft:block.anvil.land player @a ~ ~ ~ 0.5 1.5

title @s actionbar [{"text":"Fortress crumbled...","color":"gray","italic":true}]
