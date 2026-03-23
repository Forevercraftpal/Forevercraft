# Tide Guardian Ally - Tick handler
# Makes guardians fight for the player and handles lifespan

# Age the guardian
scoreboard players add @s tide_guardian_age 1

# Guardian attacks nearby hostile aquatic mobs and drowned
execute at @s as @e[type=#minecraft:hostile,distance=..12,limit=1,sort=nearest] run damage @s 4 minecraft:mob_attack by @e[type=guardian,tag=tide_guardian_ally,limit=1,sort=nearest]

# Particle trail
execute at @s run particle minecraft:bubble ~ ~ ~ 0.3 0.3 0.3 0.02 3

# Despawn after 30 seconds (600 ticks)
execute if score @s tide_guardian_age matches 600.. at @s run particle minecraft:bubble_pop ~ ~ ~ 0.5 0.5 0.5 0.1 20
execute if score @s tide_guardian_age matches 600.. at @s run playsound minecraft:entity.guardian.death player @a ~ ~ ~ 0.5 1.2
execute if score @s tide_guardian_age matches 600.. run kill @s
