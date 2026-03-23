# Happy Ghast Taming — Tame
# @s = the happy ghast being tamed. @p = the feeding player.

# Mark as tamed
tag @s add ec.ghast_tamed

# Assign owner ID
execute unless score @p ghast.owner matches 1.. run function evercraft:buddy/happy_ghast/assign_owner_id

# Copy player's owner ID to this ghast
scoreboard players operation @s ghast.owner = @p ghast.owner

# Write Owner UUID for tamed_protection integration
data modify entity @s Owner set from entity @p UUID

# Initialize state
scoreboard players set @s ghast.sitting 0
scoreboard players set @s ghast.tame_prog 0

# Prevent despawn
data modify entity @s PersistenceRequired set value 1b

# Spawn interaction entity for click detection
execute at @s run summon interaction ~ ~ ~ {Tags:["ec.ghast_interact"],width:2.0f,height:2.0f}

# Visual feedback
execute at @s run particle minecraft:happy_villager ~ ~1 ~ 1 1 1 0 30
playsound minecraft:entity.player.levelup master @p ~ ~ ~ 1.0 1.5

# Notify player
tellraw @p [{text:"[",color:"dark_gray"},{text:"Happy Ghast",color:"#FF69B4"},{text:"] ",color:"dark_gray"},{text:"You tamed a Happy Ghast! It will follow and protect you.",color:"yellow"}]
