# Tamable Fox — Tame
# Runs as the fox being tamed. @p = the feeding player.

# Mark as tamed
tag @s add ec.fox_tamed

# Assign owner ID — if player doesn't have one yet, allocate from global counter
execute unless score @p fox.owner matches 1.. run function evercraft:foxes/assign_owner_id

# Copy player's owner ID to this fox
scoreboard players operation @s fox.owner = @p fox.owner

# Write Owner UUID for tamed_bond/tamed_protection integration
data modify entity @s Owner set from entity @p UUID

# Initialize state
scoreboard players set @s fox.sitting 0
scoreboard players set @s fox.tame_prog 0

# Prevent despawn
data modify entity @s PersistenceRequired set value 1b

# Cancel any remaining love state from the final berry feed
data modify entity @s InLove set value 0

# Spawn interaction entity for click detection (sit/stand toggle)
execute at @s run summon interaction ~ ~ ~ {Tags:["ec.fox_interact"],width:0.6f,height:0.7f}

# Visual feedback
execute at @s run particle minecraft:happy_villager ~ ~0.5 ~ 0.5 0.5 0.5 0 20
playsound minecraft:entity.player.levelup master @p ~ ~ ~ 1.0 1.5

# Notify player
tellraw @p [{"text":"[","color":"dark_gray"},{"text":"Fox","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"You tamed a fox! Right-click (empty hand) to toggle sit/follow.","color":"yellow"}]
