# Marriage — Send proposal to target player
# @s = target player (found by UUID3 match)

scoreboard players set #fr_marry_found ec.temp 1

# Check target isn't already married
execute if score @s ec.fr_married matches 1 run tellraw @a[tag=ec.fr_inviter] [{text:"[Forevercraft] ",color:"gold"},{text:"That player is already married!",color:"red"}]
execute if score @s ec.fr_married matches 1 run return 0

# Store proposer's UUID3 on target
scoreboard players operation @s ec.fr_target = #fr_self_uuid3 ec.temp
tag @s add ec.fr_marry_pending

# Store proposer companion.id for message
execute store result storage evercraft:friends temp.proposer_cid int 1 run scoreboard players get @a[scores={ec.fr_marry=2..},limit=1] companion.id

# Notify
function evercraft:friends/marriage/proposal_msg with storage evercraft:friends temp
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.5
