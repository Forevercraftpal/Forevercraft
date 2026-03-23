# Friend Invite — Send friend request to target player
# @s = sending player (tagged ec.fr_inviter), at @s position
# Target found via raycast — tagged ec.fr_ray_target

# Validate: check friend count
execute if score @s ec.fr_count matches 50.. run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You have reached the maximum of 50 friends!",color:"red"}]
execute if score @s ec.fr_count matches 50.. run return 0

# Check target exists
execute unless entity @a[tag=ec.fr_ray_target,limit=1] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"No player found!",color:"red"}]
execute unless entity @a[tag=ec.fr_ray_target,limit=1] run return 0

# Check target's friend count
execute if score @a[tag=ec.fr_ray_target,limit=1] ec.fr_count matches 50.. run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"That player has reached their friend limit!",color:"red"}]
execute if score @a[tag=ec.fr_ray_target,limit=1] ec.fr_count matches 50.. run return 0

# Check not already friends — store both UUID[3]s and check storage
execute store result score #fr_self_uuid3 ec.temp run data get entity @s UUID[3]
execute store result score #fr_target_uuid3 ec.temp run data get entity @a[tag=ec.fr_ray_target,limit=1] UUID[3]

# Store self UUID3 to temp storage for macro lookup
execute store result storage evercraft:friends temp.self_uuid3 int 1 run scoreboard players get #fr_self_uuid3 ec.temp
execute store result storage evercraft:friends temp.target_uuid3 int 1 run scoreboard players get #fr_target_uuid3 ec.temp

# Check if already friends (via macro)
function evercraft:friends/invite/check_existing with storage evercraft:friends temp

# If #fr_already ec.temp is 1, they're already friends — show their showcase instead
execute if score #fr_already ec.temp matches 1 run function evercraft:codex/friends/showcase/raycast_view
execute if score #fr_already ec.temp matches 1 run return 0

# Send invite notification to target
# Store sender's companion.id for selector-based name display
execute store result storage evercraft:friends temp.sender_cid int 1 run scoreboard players get @s companion.id

# Tag target with pending invite and store sender's UUID3
execute as @a[tag=ec.fr_ray_target,limit=1] run scoreboard players operation @s ec.fr_target = #fr_self_uuid3 ec.temp

# Notify target with accept/decline buttons
execute as @a[tag=ec.fr_ray_target,limit=1] run function evercraft:friends/invite/notify_target

# Notify sender
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Friend request sent!",color:"green"}]
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.2

# Cleanup
tag @s remove ec.fr_inviter
tag @a remove ec.fr_ray_target
