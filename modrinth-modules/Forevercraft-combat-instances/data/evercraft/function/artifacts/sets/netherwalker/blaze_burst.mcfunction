# Blaze Burst - Netherwalker 4pc ability
# Creates an explosion of fire around the player

# Check for 4pc bonus
execute unless entity @s[tag=netherwalker_4pc] run return 0

# Visual and sound effects
playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 0.8
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.5 1.2
particle flame ~ ~ ~ 2 1 2 0.1 100 force
particle lava ~ ~ ~ 1 1 1 0 20 force

# Damage and knockback nearby mobs
execute as @e[type=!#evercraft:ignore_artifact_damage,distance=..5,tag=!ec.artifact_immune] at @s run damage @s 8 minecraft:on_fire by @p
execute as @e[type=!#evercraft:ignore_artifact_damage,distance=..5] at @s facing entity @p feet positioned as @p run tp @s ^ ^ ^-2

# Set mobs on fire
effect give @e[type=!player,distance=..5] minecraft:instant_damage 1 0
execute as @e[type=!player,distance=..5] run data merge entity @s {Fire:100s}

# Feedback
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Blaze Burst!",color:"red"}]

# Cooldown message (cooldown handled in tick)
