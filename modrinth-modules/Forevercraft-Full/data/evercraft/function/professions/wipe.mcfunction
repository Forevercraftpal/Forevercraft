# Wipe custom profession from villager (@s = villager)
# Reset grace counter
scoreboard players set @s mp.grace 0

# Remove custom profession name
data remove entity @s custom_name
data modify entity @s CustomNameVisible set value 0b

# Kill Wise Wanderer interaction detector if present
execute if entity @s[tag=more_professions_wise_wanderer] run kill @e[type=minecraft:interaction,tag=WW.Detector,distance=..2]

# Remove all profession tags
tag @s remove more_professions_verified
tag @s remove more_professions_circut_board
tag @s remove more_professions_nymph
tag @s remove more_professions_wise_wanderer
tag @s remove more_professions_miner
tag @s remove more_professions_beekeeper
tag @s remove more_professions_hunter
tag @s remove more_professions_explorer
tag @s remove more_professions_bartender
tag @s remove more_professions_kiosk
tag @s remove more_professions_retired_adventurer
tag @s remove more_professions_zookeeper
tag @s remove more_professions_artificer
scoreboard players reset @s more_professions_offers
scoreboard players reset @s more_professions_trade_progress
scoreboard players reset @s more_professions_visible_trade_progress