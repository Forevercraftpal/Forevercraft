# Tab 4: Show Mount Bond Info
# @s = player with a bonded mount (ec.mt_tier >= 1)

# Determine tier name
data modify storage evercraft:buddy temp.mt_tier_name set value "Unfamiliar"
execute if score @s ec.mt_tier matches 1 run data modify storage evercraft:buddy temp.mt_tier_name set value "Trusted"
execute if score @s ec.mt_tier matches 2 run data modify storage evercraft:buddy temp.mt_tier_name set value "Bonded"
execute if score @s ec.mt_tier matches 3 run data modify storage evercraft:buddy temp.mt_tier_name set value "Soulbound"
execute if score @s ec.mt_tier matches 4 run data modify storage evercraft:buddy temp.mt_tier_name set value "Eternal"

execute store result storage evercraft:buddy temp.mt_bond int 1 run scoreboard players get @s ec.mt_bond
execute store result storage evercraft:buddy temp.mt_tier int 1 run scoreboard players get @s ec.mt_tier

function evercraft:buddy/gui/tab_training/render_bond with storage evercraft:buddy temp
