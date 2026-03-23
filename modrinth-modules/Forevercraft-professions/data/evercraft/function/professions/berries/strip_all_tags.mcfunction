# Strip all custom profession tags from current entity (@s = villager)
tag @s remove more_professions_verified
tag @s remove more_professions_circut_board
tag @s remove more_professions_nymph
tag @s remove more_professions_miner
tag @s remove more_professions_beekeeper
tag @s remove more_professions_hunter
tag @s remove more_professions_explorer
tag @s remove more_professions_zookeeper
tag @s remove more_professions_artificer
tag @s remove more_professions_bartender
tag @s remove more_professions_retired_adventurer
tag @s remove more_professions_wise_wanderer
# Kill any Wise Wanderer interaction entities near this villager
execute as @e[type=minecraft:interaction,tag=WW.Detector,distance=..2] run kill @s

# Set to nitwit so custom professions use the green coat base
data modify entity @s VillagerData.profession set value "minecraft:nitwit"
