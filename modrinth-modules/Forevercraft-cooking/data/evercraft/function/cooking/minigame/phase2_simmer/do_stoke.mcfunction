# Phase 2: SIMMER — Stoke (raise temperature by 8)
# Runs as the player. Respects cooldown.
execute if score @s ec.ck_v5 matches 1.. run return 0

# Raise temp
scoreboard players add @s ec.ck_v1 8
execute if score @s ec.ck_v1 matches 101.. run scoreboard players set @s ec.ck_v1 100

# Set cooldown (10 ticks)
scoreboard players set @s ec.ck_v5 10

# Sound
playsound minecraft:block.fire.ambient master @s ~ ~ ~ 0.6 1.0
