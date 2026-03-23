# Buddy Designation — Set Buddy Data (finalize the bond)
# @s = player
# Target entity is tagged ec.bd_designating_target

# Determine mob type ID
scoreboard players set @s ec.bd_type_id 0
execute if entity @e[type=minecraft:wolf,tag=ec.bd_designating_target,limit=1] run scoreboard players set @s ec.bd_type_id 1
execute if entity @e[type=minecraft:cat,tag=ec.bd_designating_target,limit=1] run scoreboard players set @s ec.bd_type_id 2
execute if entity @e[type=minecraft:parrot,tag=ec.bd_designating_target,limit=1] run scoreboard players set @s ec.bd_type_id 3
execute if entity @e[type=minecraft:horse,tag=ec.bd_designating_target,limit=1] run scoreboard players set @s ec.bd_type_id 4
execute if entity @e[type=minecraft:donkey,tag=ec.bd_designating_target,limit=1] run scoreboard players set @s ec.bd_type_id 5
execute if entity @e[type=minecraft:mule,tag=ec.bd_designating_target,limit=1] run scoreboard players set @s ec.bd_type_id 6
execute if entity @e[type=minecraft:llama,tag=ec.bd_designating_target,limit=1] run scoreboard players set @s ec.bd_type_id 7
execute if entity @e[type=minecraft:trader_llama,tag=ec.bd_designating_target,limit=1] run scoreboard players set @s ec.bd_type_id 8
execute if entity @e[type=minecraft:camel,tag=ec.bd_designating_target,limit=1] run scoreboard players set @s ec.bd_type_id 9
execute if entity @e[type=minecraft:fox,tag=ec.bd_designating_target,limit=1] run scoreboard players set @s ec.bd_type_id 10
execute if entity @e[type=minecraft:ocelot,tag=ec.bd_designating_target,limit=1] run scoreboard players set @s ec.bd_type_id 11
execute if entity @e[type=minecraft:happy_ghast,tag=ec.bd_designating_target,limit=1] run scoreboard players set @s ec.bd_type_id 12

# Store target UUID in player scores
execute store result score @s ec.bd_uuid0 run data get entity @e[tag=ec.bd_designating_target,limit=1] UUID[0]
execute store result score @s ec.bd_uuid1 run data get entity @e[tag=ec.bd_designating_target,limit=1] UUID[1]

# Initialize friendship
scoreboard players set @s ec.bd_points 0
scoreboard players set @s ec.bd_tier 0

# Tag the entity as a buddy and store owner's companion.id for multiplayer ownership checks
tag @e[tag=ec.bd_designating_target,limit=1] add ec.bd_buddy
execute as @e[tag=ec.bd_designating_target,limit=1] run tag @s add ec.bd_buddy
execute store result score @e[tag=ec.bd_designating_target,limit=1] ec.bd_owner_id run scoreboard players get @s companion.id

# Store buddy name from entity CustomName into storage
data modify storage evercraft:buddy temp.buddy_name set from entity @e[tag=ec.bd_designating_target,limit=1] CustomName

# Store buddy data in per-player storage (macro)
execute store result storage evercraft:buddy temp.player_id int 1 run scoreboard players get @s companion.id
execute store result storage evercraft:buddy temp.type_id int 1 run scoreboard players get @s ec.bd_type_id
execute store result storage evercraft:buddy temp.uuid0 int 1 run scoreboard players get @s ec.bd_uuid0
execute store result storage evercraft:buddy temp.uuid1 int 1 run scoreboard players get @s ec.bd_uuid1

# Clean up temp tag
tag @e[tag=ec.bd_designating_target] remove ec.bd_designating_target

# Get buddy name for announcement
function evercraft:buddy/designate/announce with storage evercraft:buddy temp

# Play bonding effects
execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.2
execute as @e[tag=ec.bd_buddy,type=#evercraft:tameable_companions,distance=..10,limit=1] at @s run particle minecraft:heart ~ ~1 ~ 0.3 0.3 0.3 0 10
