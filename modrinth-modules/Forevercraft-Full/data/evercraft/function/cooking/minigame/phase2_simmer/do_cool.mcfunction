# Phase 2: SIMMER — Cool (lower temperature by 8)
# Runs as the player. Respects cooldown.
execute if score @s ec.ck_v5 matches 1.. run return 0

# Lower temp
scoreboard players remove @s ec.ck_v1 8
execute if score @s ec.ck_v1 matches ..-1 run scoreboard players set @s ec.ck_v1 0

# Set cooldown (10 ticks)
scoreboard players set @s ec.ck_v5 10

# Sound
playsound minecraft:entity.generic.splash master @s ~ ~ ~ 0.3 1.5
