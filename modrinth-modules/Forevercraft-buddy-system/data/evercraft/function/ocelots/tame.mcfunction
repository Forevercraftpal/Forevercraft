# Tamable Ocelot — Tame
# Runs as the ocelot being tamed. @p = the feeding player.

# Mark as tamed
tag @s add ec.ocelot_tamed

# Assign owner ID — if player doesn't have one yet, allocate from global counter
execute unless score @p ocelot.owner matches 1.. run function evercraft:ocelots/assign_owner_id

# Copy player's owner ID to this ocelot
scoreboard players operation @s ocelot.owner = @p ocelot.owner

# Write Owner UUID for tamed_bond/tamed_protection integration
data modify entity @s Owner set from entity @p UUID

# Initialize state
scoreboard players set @s ocelot.sitting 0
scoreboard players set @s ocelot.tame_prog 0

# Prevent despawn
data modify entity @s PersistenceRequired set value 1b

# Permanent Strength I — ocelots hit harder than other tamed mobs
effect give @s strength infinite 0 true

# Spawn interaction entity for click detection (sit/stand toggle)
execute at @s run summon interaction ~ ~ ~ {Tags:["ec.ocelot_interact"],width:0.6f,height:0.7f}

# Visual feedback
execute at @s run particle minecraft:happy_villager ~ ~0.5 ~ 0.5 0.5 0.5 0 20
playsound minecraft:entity.player.levelup master @p ~ ~ ~ 1.0 1.5

# Notify player
tellraw @p [{"text":"[","color":"dark_gray"},{"text":"Ocelot","color":"#C4A000"},{"text":"] ","color":"dark_gray"},{"text":"You tamed an ocelot! Right-click (empty hand) to toggle sit/follow.","color":"yellow"}]
