# Infernal Eruption - Infernal 4pc ability
# Devastating AoE fire burst around the player

# Check for 4pc bonus
execute unless entity @s[tag=infernal_4pc] run return 0

# Check cooldown
execute if score @s ec.infernal_cd matches 1.. run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Infernal Eruption is on cooldown!",color:"red"}]
execute if score @s ec.infernal_cd matches 1.. run return 0

# Set cooldown (10 seconds = 200 ticks)
scoreboard players set @s ec.infernal_cd 200

# Visual and sound effects
playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 0.6
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.8 0.8
playsound minecraft:item.firecharge.use player @a ~ ~ ~ 1 0.5
particle flame ~ ~ ~ 3 1 3 0.15 150 force
particle lava ~ ~ ~ 2 1 2 0 30 force
particle minecraft:large_smoke ~ ~ ~ 2 1 2 0.05 40 force

# Damage and ignite nearby mobs (6 block radius, 10 damage)
execute as @e[type=!#evercraft:ignore_artifact_damage,distance=..6,tag=!ec.artifact_immune] at @s run damage @s 10 minecraft:on_fire by @p
execute as @e[type=!player,distance=..6] run data merge entity @s {Fire:200s}

# Knockback
execute as @e[type=!#evercraft:ignore_artifact_damage,distance=..6] at @s facing entity @p feet positioned as @p run tp @s ^ ^ ^-3

# Feedback
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Infernal Eruption!",color:"red",bold:true}]
