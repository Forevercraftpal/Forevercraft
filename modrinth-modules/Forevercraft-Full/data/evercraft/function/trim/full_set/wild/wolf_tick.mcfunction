# Wild Guardian Wolf Pack - Combat AI and Lifecycle
# Wolves attack nearby hostiles, age out after 60 seconds (1200 ticks)

# Age all wild guardian wolves
scoreboard players add @e[type=wolf,tag=wild_guardian] wild_wolf_age 1

# Wolves attack nearest hostile within 8 blocks (with cooldown via tag)
execute as @e[type=wolf,tag=wild_guardian,tag=!wild_wolf_cooldown] at @s run damage @e[type=#minecraft:hostile,distance=..3,limit=1,sort=nearest] 8 minecraft:mob_attack by @s
execute as @e[type=wolf,tag=wild_guardian,tag=!wild_wolf_cooldown] at @s if entity @e[type=#minecraft:hostile,distance=..3,limit=1] run tag @s add wild_wolf_cooldown

# Cooldown reset every 10 ticks
scoreboard players add #wild_wolf_cd trim_flag 1
execute if score #wild_wolf_cd trim_flag matches 10.. run scoreboard players set #wild_wolf_cd trim_flag 0
execute if score #wild_wolf_cd trim_flag matches 0 run tag @e[type=wolf,tag=wild_guardian,tag=wild_wolf_cooldown] remove wild_wolf_cooldown

# Despawn after 60 seconds (1200 ticks) with particle effect
execute as @e[type=wolf,tag=wild_guardian,scores={wild_wolf_age=1200..}] at @s run particle minecraft:poof ~ ~ ~ 0.3 0.3 0.3 0.05 10
execute as @e[type=wolf,tag=wild_guardian,scores={wild_wolf_age=1200..}] at @s run playsound minecraft:entity.wolf.whine neutral @a ~ ~ ~ 0.5 1.2
kill @e[type=wolf,tag=wild_guardian,scores={wild_wolf_age=1200..}]
