# Sentinel Detection — Striker with shield in offhand
# Run as player who is ec.sk_active and just equipped shield

tag @s add ec.sk_sentinel

# Remove consumable from mace so shield blocking works
execute at @s run function evercraft:artifacts/striker/remove_consumable

# Cap Impact to 75 (Sentinel max)
execute if score @s ec.sk_impact matches 76.. run scoreboard players set @s ec.sk_impact 75

# Initialize fortress cooldown to ready
execute unless score @s ec.sk_fort_cd matches 0.. run scoreboard players set @s ec.sk_fort_cd -1

# Feedback
playsound minecraft:item.shield.block player @s ~ ~ ~ 0.6 0.8
title @s actionbar [{"text":"Sentinel Mode","color":"aqua","bold":true},{"text":" — shield raised","color":"white","bold":false}]
