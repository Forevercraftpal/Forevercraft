# Buddy Points — Tier Promotion
# @s = player whose buddy just gained a tier
# ec.bd_tier = new tier

# Store tier for macro
execute store result storage evercraft:buddy temp.tier int 1 run scoreboard players get @s ec.bd_tier

# Determine tier name
data modify storage evercraft:buddy temp.tier_name set value "Acquaintance"
execute if score @s ec.bd_tier matches 1 run data modify storage evercraft:buddy temp.tier_name set value "Familiar"
execute if score @s ec.bd_tier matches 2 run data modify storage evercraft:buddy temp.tier_name set value "Trusted"
execute if score @s ec.bd_tier matches 3 run data modify storage evercraft:buddy temp.tier_name set value "Devoted"
execute if score @s ec.bd_tier matches 4 run data modify storage evercraft:buddy temp.tier_name set value "Eternal"
execute if score @s ec.bd_tier matches 5 run data modify storage evercraft:buddy temp.tier_name set value "Mythic Bond"
execute if score @s ec.bd_tier matches 6 run data modify storage evercraft:buddy temp.tier_name set value "Spiritbound"

# Determine tier color
data modify storage evercraft:buddy temp.tier_color set value "gray"
execute if score @s ec.bd_tier matches 1 run data modify storage evercraft:buddy temp.tier_color set value "green"
execute if score @s ec.bd_tier matches 2 run data modify storage evercraft:buddy temp.tier_color set value "aqua"
execute if score @s ec.bd_tier matches 3 run data modify storage evercraft:buddy temp.tier_color set value "light_purple"
execute if score @s ec.bd_tier matches 4 run data modify storage evercraft:buddy temp.tier_color set value "gold"
execute if score @s ec.bd_tier matches 5 run data modify storage evercraft:buddy temp.tier_color set value "#FF6B6B"
execute if score @s ec.bd_tier matches 6 run data modify storage evercraft:buddy temp.tier_color set value "#FFD700"

# Announce
function evercraft:buddy/points/promote_announce with storage evercraft:buddy temp

# Milestone bonus: +25 points (don't re-check tier to avoid infinite loop)
scoreboard players add @s ec.bd_points 25

# Effects
execute at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
execute at @s run particle minecraft:totem_of_undying ~ ~1.5 ~ 0.5 0.5 0.5 0.3 30

# Spiritbound special: notify about Best Buddy eligibility
execute if score @s ec.bd_tier matches 6 run tellraw @s [{text:"[Buddy] ",color:"#FFD700"},{text:"Your buddy has reached ",color:"yellow"},{text:"Spiritbound",color:"#FFD700",bold:true},{text:"! You may now promote it to your ",color:"yellow"},{text:"Best Buddy",color:"#FF4500",bold:true},{text:" via the Companion Catalogue.",color:"yellow"}]
