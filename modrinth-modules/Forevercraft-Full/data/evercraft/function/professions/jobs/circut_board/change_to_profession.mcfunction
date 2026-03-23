# Change villager to Redstoner (Technician) profession
tag @s add more_professions_verified
tag @s add more_professions_circut_board

# Set custom name and ensure all trade tiers are visible (level 5 = master)
data modify entity @s CustomName set value {text:"Technician",color:"dark_red",bold:true}
data modify entity @s CustomNameVisible set value 1b
data modify entity @s VillagerData.level set value 5

# Initialize scoreboard values
scoreboard players add @s more_professions_offers 0
scoreboard players add @s more_professions_trade_progress 0
scoreboard players add @s more_professions_visible_trade_progress 0

# Check for visible trades compat
execute if score @s more_professions_visible_trade_progress matches 0 if entity @e[type=minecraft:villager,nbt={LockedOffers:[{}]},limit=1] run schedule function evercraft:professions/visible_trades/compat 5t replace

# Setup trades
function evercraft:professions/jobs/circut_board/setup_all_trades
