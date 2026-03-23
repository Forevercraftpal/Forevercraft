# Buddy Points — Boss Kill (+25 per boss killed with buddy nearby)
# @s = player who participated in boss kill
# Called from hook in bosses/rewards/give_participant.mcfunction

# Only if player has a buddy
execute unless score @s ec.bd_tier matches 0.. run return fail

# Only if buddy is within 16 blocks
execute at @s unless entity @e[tag=ec.bd_buddy,type=#evercraft:tameable_companions,distance=..16,limit=1] run return fail

scoreboard players set #bd_pts_add ec.temp 25
function evercraft:buddy/points/add_points
tellraw @s [{text:"[Buddy] ",color:"#FFD700"},{text:"Your buddy fought bravely by your side! ",color:"yellow"},{text:"+25 Friendship",color:"green"}]
