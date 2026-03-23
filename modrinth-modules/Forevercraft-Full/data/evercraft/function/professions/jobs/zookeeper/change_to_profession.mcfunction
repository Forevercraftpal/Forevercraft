# Change villager to Zookeeper profession
tag @s add more_professions_verified
tag @s add more_professions_zookeeper

# Set custom name and ensure all trade tiers are visible (level 5 = master)
data modify entity @s CustomName set value {text:"Zookeeper",color:"aqua",bold:true}
data modify entity @s CustomNameVisible set value 1b
data modify entity @s VillagerData.level set value 5

# Initialize trade tracking
scoreboard players set @s more_professions_offers 0
scoreboard players set @s more_professions_trade_progress 0
scoreboard players set @s more_professions_visible_trade_progress 0

# Set up all trades immediately (Zookeeper has fixed trades)
function evercraft:professions/jobs/zookeeper/setup_all_trades
