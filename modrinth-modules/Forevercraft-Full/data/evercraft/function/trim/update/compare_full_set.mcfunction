# Compare all 4 armor trim patterns using macro (reliable NBT string comparison)
# Called with storage evercraft:trim.player_armor which has ref, helmet, chestplate, leggings, boots
# $(ref) = boots pattern — check if all other pieces match it

$execute unless data storage evercraft:trim.player_armor {helmet:"$(ref)"} run return 0
$execute unless data storage evercraft:trim.player_armor {chestplate:"$(ref)"} run return 0
$execute unless data storage evercraft:trim.player_armor {leggings:"$(ref)"} run return 0

# All 4 pieces match — extract trim name and call full set ability
data modify storage evercraft:trim.player_armor trim set string entity @s equipment.feet.components."minecraft:trim".pattern 10
function evercraft:trim/update/full_set_ability with storage evercraft:trim.player_armor
