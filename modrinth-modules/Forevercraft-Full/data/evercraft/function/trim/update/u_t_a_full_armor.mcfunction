#  full set - using 1.21+ equipment path
data modify storage evercraft:trim.player_armor boots set from entity @s equipment.feet.components."minecraft:trim".pattern
data modify storage evercraft:trim.player_armor leggings set from entity @s equipment.legs.components."minecraft:trim".pattern
data modify storage evercraft:trim.player_armor chestplate set from entity @s equipment.chest.components."minecraft:trim".pattern
data modify storage evercraft:trim.player_armor helmet set from entity @s equipment.head.components."minecraft:trim".pattern

# Use boots as reference — macro checks if helmet, chestplate, leggings all match
data modify storage evercraft:trim.player_armor ref set from storage evercraft:trim.player_armor boots
function evercraft:trim/update/compare_full_set with storage evercraft:trim.player_armor

# ALWAYS apply single piece abilities too (so full set gets both bonuses)
data modify storage evercraft:trim.player_armor boots set string entity @s equipment.feet.components."minecraft:trim".pattern 10
data modify storage evercraft:trim.player_armor leggings set string entity @s equipment.legs.components."minecraft:trim".pattern 10
data modify storage evercraft:trim.player_armor chestplate set string entity @s equipment.chest.components."minecraft:trim".pattern 10
data modify storage evercraft:trim.player_armor helmet set string entity @s equipment.head.components."minecraft:trim".pattern 10
execute if items entity @s armor.feet *[minecraft:trim] run function evercraft:trim/update/u_t_a_boots with storage evercraft:trim.player_armor
execute if items entity @s armor.legs *[minecraft:trim] run function evercraft:trim/update/u_t_a_leggings with storage evercraft:trim.player_armor
execute if items entity @s armor.chest *[minecraft:trim] run function evercraft:trim/update/u_t_a_chestplate with storage evercraft:trim.player_armor
execute if items entity @s armor.head *[minecraft:trim] run function evercraft:trim/update/u_t_a_helmet with storage evercraft:trim.player_armor
