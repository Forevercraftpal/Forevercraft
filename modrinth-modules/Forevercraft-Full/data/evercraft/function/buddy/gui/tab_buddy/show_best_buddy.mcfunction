# Tab 2: Show Best Buddy Info
# @s = player with a best buddy

# Determine tier name for display
data modify storage evercraft:buddy temp.tier_name set value "Spiritbound"

# Build display text with points and tier
execute store result storage evercraft:buddy temp.points int 1 run scoreboard players get @s ec.bd_points
function evercraft:buddy/gui/tab_buddy/render_best with storage evercraft:buddy temp
