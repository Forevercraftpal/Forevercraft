tag @s remove ec.reach
playsound minecraft:entity.wither_skeleton.death player @s ~ ~ ~ 0.2 2

attribute @s block_interaction_range modifier remove ec.reach
attribute @s entity_interaction_range modifier remove ec.reach

scoreboard players set @s ec.reach 0