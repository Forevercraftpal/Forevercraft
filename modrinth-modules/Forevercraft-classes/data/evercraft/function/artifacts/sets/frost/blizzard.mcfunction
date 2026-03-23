# Blizzard - Frost 4pc ability
# Creates an ice storm around the player

# Check for 4pc bonus
execute unless entity @s[tag=frost_4pc] run return 0

# Visual and sound effects
playsound minecraft:entity.snow_golem.ambient player @a ~ ~ ~ 1 0.5
playsound minecraft:block.powder_snow.break player @a ~ ~ ~ 1 0.8
particle snowflake ~ ~1 ~ 3 2 3 0.05 200 force
particle block{block_state:"minecraft:blue_ice"} ~ ~1 ~ 2 1 2 0.1 50 force

# Freeze and damage nearby mobs
effect give @e[type=!player,distance=..6] slowness 5 3
effect give @e[type=!player,distance=..6] mining_fatigue 5 2
execute as @e[type=!#evercraft:ignore_artifact_damage,distance=..6,tag=!ec.artifact_immune] at @s run damage @s 4 minecraft:freeze

# Feedback
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Blizzard!",color:"aqua"}]
