# Tab 2: Show Current Buddy Stats
# @s = player with a buddy

# Determine tier name
data modify storage evercraft:buddy temp.tier_name set value "Acquaintance"
execute if score @s ec.bd_tier matches 1 run data modify storage evercraft:buddy temp.tier_name set value "Familiar"
execute if score @s ec.bd_tier matches 2 run data modify storage evercraft:buddy temp.tier_name set value "Trusted"
execute if score @s ec.bd_tier matches 3 run data modify storage evercraft:buddy temp.tier_name set value "Devoted"
execute if score @s ec.bd_tier matches 4 run data modify storage evercraft:buddy temp.tier_name set value "Eternal"
execute if score @s ec.bd_tier matches 5 run data modify storage evercraft:buddy temp.tier_name set value "Mythic Bond"
execute if score @s ec.bd_tier matches 6 run data modify storage evercraft:buddy temp.tier_name set value "Spiritbound"

execute store result storage evercraft:buddy temp.points int 1 run scoreboard players get @s ec.bd_points
execute store result storage evercraft:buddy temp.tier int 1 run scoreboard players get @s ec.bd_tier

function evercraft:buddy/gui/tab_buddy/render_stats with storage evercraft:buddy temp
