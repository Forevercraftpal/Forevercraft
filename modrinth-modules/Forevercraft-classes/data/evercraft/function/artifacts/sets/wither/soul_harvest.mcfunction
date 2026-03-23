# Soul Harvest - Wither 4pc ability
# Consumes withered enemies for healing and power

# Check for 4pc bonus
execute unless entity @s[tag=wither_4pc] run return 0

# Visual and sound effects
playsound minecraft:entity.wither.ambient player @a ~ ~ ~ 0.5 1.5
playsound minecraft:entity.wither.hurt player @a ~ ~ ~ 0.5 1.2
particle soul ~ ~1 ~ 2 1 2 0.05 50 force
particle smoke ~ ~1 ~ 2 1 2 0.05 30 force

# Damage withered mobs heavily and heal self
execute as @e[type=!player,distance=..6,nbt={active_effects:[{id:"minecraft:wither"}]}] at @s run particle soul_fire_flame ~ ~1 ~ 0.3 0.3 0.3 0.02 20 force
execute as @e[type=!#evercraft:ignore_artifact_damage,distance=..6,nbt={active_effects:[{id:"minecraft:wither"}]},tag=!ec.artifact_immune] at @s run damage @s 10 minecraft:wither

# Heal self based on withered mobs nearby
execute if entity @e[type=!player,distance=..6,nbt={active_effects:[{id:"minecraft:wither"}]},limit=1] run effect give @s regeneration 3 2

# Strength boost
effect give @s strength 10 1

# Feedback
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Soul Harvest!",color:"dark_gray"}]
