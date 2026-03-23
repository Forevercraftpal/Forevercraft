# Friend Invite — Accept friend request
# @s = accepting player (target), sender's UUID3 in ec.fr_target

tag @s remove ec.fr_pending

# Get accepter's UUID3
execute store result score #fr_accepter_uuid3 ec.temp run data get entity @s UUID[3]
# Sender's UUID3 was stored in ec.fr_target on accepting player
scoreboard players operation #fr_sender_uuid3 ec.temp = @s ec.fr_target

# Store both to temp storage for macro calls
execute store result storage evercraft:friends temp.accepter_uuid3 int 1 run scoreboard players get #fr_accepter_uuid3 ec.temp
execute store result storage evercraft:friends temp.sender_uuid3 int 1 run scoreboard players get #fr_sender_uuid3 ec.temp

# Store companion.id for both (used for selector-based name display in GUI)
execute store result storage evercraft:friends temp.accepter_cid int 1 run scoreboard players get @s companion.id
execute as @a store result score @s ec.temp_uuid3 run data get entity @s UUID[3]
execute as @a if score @s ec.temp_uuid3 = #fr_sender_uuid3 ec.temp run execute store result storage evercraft:friends temp.sender_cid int 1 run scoreboard players get @s companion.id

# Do the storage operations via macro (init both, add both)
function evercraft:friends/invite/do_accept with storage evercraft:friends temp

# Update accepter's friend count
scoreboard players add @s ec.fr_count 1

# Find sender online and update their count + notify
execute as @a if score @s ec.temp_uuid3 = #fr_sender_uuid3 ec.temp run function evercraft:friends/invite/on_accepted

# Notify accepter
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You are now friends!",color:"green"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 1.5

# Reset target score
scoreboard players set @s ec.fr_target 0
