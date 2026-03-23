# Buddy Points — Near Death (+10, survive below 2 hearts with buddy nearby)
# @s = player at <= 4 health (2 hearts) with buddy within 16 blocks

# Award points
scoreboard players set #bd_pts_add ec.temp 10
function evercraft:buddy/points/add_points

# Set cooldown tag (prevent spam — removed after 60 seconds)
tag @s add ec.bd_neardeath_cd
schedule function evercraft:buddy/points/clear_neardeath 1200t append

tellraw @s [{text:"[Buddy] ",color:"#FFD700"},{text:"Your buddy senses your pain and stays close!",color:"yellow"}]
