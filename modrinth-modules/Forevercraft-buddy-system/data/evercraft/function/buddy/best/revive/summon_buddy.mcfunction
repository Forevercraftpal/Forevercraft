# Best Buddy — Summon Buddy Entity by Type
# Summons the correct mob type and tags it as buddy + best buddy
# $(revive_type) = mob type ID (1-12)

# Summon based on type (only one will match)
execute if score @s ec.bd_best_type matches 1 run summon minecraft:wolf ~ ~ ~ {Tags:["ec.bd_buddy","ec.bd_best","ec.bd_new"],PersistenceRequired:1b,Tame:1b}
execute if score @s ec.bd_best_type matches 2 run summon minecraft:cat ~ ~ ~ {Tags:["ec.bd_buddy","ec.bd_best","ec.bd_new"],PersistenceRequired:1b,Tame:1b}
execute if score @s ec.bd_best_type matches 3 run summon minecraft:parrot ~ ~ ~ {Tags:["ec.bd_buddy","ec.bd_best","ec.bd_new"],PersistenceRequired:1b,Tame:1b}
execute if score @s ec.bd_best_type matches 4 run summon minecraft:horse ~ ~ ~ {Tags:["ec.bd_buddy","ec.bd_best","ec.bd_new"],PersistenceRequired:1b,Tame:1b}
execute if score @s ec.bd_best_type matches 5 run summon minecraft:donkey ~ ~ ~ {Tags:["ec.bd_buddy","ec.bd_best","ec.bd_new"],PersistenceRequired:1b,Tame:1b}
execute if score @s ec.bd_best_type matches 6 run summon minecraft:mule ~ ~ ~ {Tags:["ec.bd_buddy","ec.bd_best","ec.bd_new"],PersistenceRequired:1b,Tame:1b}
execute if score @s ec.bd_best_type matches 7 run summon minecraft:llama ~ ~ ~ {Tags:["ec.bd_buddy","ec.bd_best","ec.bd_new"],PersistenceRequired:1b,Tame:1b}
execute if score @s ec.bd_best_type matches 8 run summon minecraft:trader_llama ~ ~ ~ {Tags:["ec.bd_buddy","ec.bd_best","ec.bd_new"],PersistenceRequired:1b}
execute if score @s ec.bd_best_type matches 9 run summon minecraft:camel ~ ~ ~ {Tags:["ec.bd_buddy","ec.bd_best","ec.bd_new"],PersistenceRequired:1b,Tame:1b}
execute if score @s ec.bd_best_type matches 10 run summon minecraft:fox ~ ~ ~ {Tags:["ec.bd_buddy","ec.bd_best","ec.bd_new"],PersistenceRequired:1b}
execute if score @s ec.bd_best_type matches 11 run summon minecraft:ocelot ~ ~ ~ {Tags:["ec.bd_buddy","ec.bd_best","ec.bd_new"],PersistenceRequired:1b}
execute if score @s ec.bd_best_type matches 12 run summon minecraft:happy_ghast ~ ~ ~ {Tags:["ec.bd_buddy","ec.bd_best","ec.bd_new"],PersistenceRequired:1b}

# Set owner on the new entity (copy player's UUID)
$execute as @e[tag=ec.bd_new,distance=..5,limit=1] run data modify entity @s Owner set from entity @a[scores={ec.bd_best_type=$(revive_type)},limit=1,sort=nearest] UUID

# Store new entity UUID for targeting
$execute store result score @a[scores={ec.bd_best_type=$(revive_type)},limit=1,sort=nearest] ec.bd_best_uuid0 run data get entity @e[tag=ec.bd_new,distance=..5,limit=1] UUID[0]
$execute store result score @a[scores={ec.bd_best_type=$(revive_type)},limit=1,sort=nearest] ec.bd_best_uuid1 run data get entity @e[tag=ec.bd_new,distance=..5,limit=1] UUID[1]
$execute store result score @a[scores={ec.bd_best_type=$(revive_type)},limit=1,sort=nearest] ec.bd_uuid0 run data get entity @e[tag=ec.bd_new,distance=..5,limit=1] UUID[0]
$execute store result score @a[scores={ec.bd_best_type=$(revive_type)},limit=1,sort=nearest] ec.bd_uuid1 run data get entity @e[tag=ec.bd_new,distance=..5,limit=1] UUID[1]

# Apply buddy name from storage
execute as @e[tag=ec.bd_new,distance=..5,limit=1] run function evercraft:buddy/best/revive/restore_name

# Store owner ID for multiplayer ownership verification
execute store result score @e[tag=ec.bd_new,distance=..5,limit=1] ec.bd_owner_id run scoreboard players get @s companion.id

# Add to tamed protection
execute as @e[tag=ec.bd_new,distance=..5,limit=1] run tag @s add ec.tame_protected

# Clean up temp tag
tag @e[tag=ec.bd_new] remove ec.bd_new
