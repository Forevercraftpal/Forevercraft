# Thornmaw — Beast Expire
# Kill all summoned beasts when Wild Summon timer runs out

# Death particles on each beast
execute as @e[tag=ec.sp_beast] at @s run particle poof ~ ~0.5 ~ 0.3 0.3 0.3 0.05 10
execute as @e[tag=ec.sp_beast] at @s run particle soul ~ ~0.5 ~ 0.3 0.5 0.3 0.02 5

# Kill all beasts
kill @e[tag=ec.sp_beast]

# Remove active tag
tag @s remove ec.sp_beast_active

# SFX
playsound minecraft:entity.illusioner.mirror_move player @a ~ ~ ~ 0.8 1.5

title @s actionbar [{"text":"Beasts faded...","color":"gray","italic":true}]
