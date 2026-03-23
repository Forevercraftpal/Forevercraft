# Set up Taskmaster custom profession
# Sells laborer contracts

# Strip existing profession
function evercraft:professions/berries/strip_all_tags

# Add profession tags
tag @s add more_professions_verified
tag @s add more_professions_taskmaster

# Set custom name
data modify entity @s CustomName set value {"text":"Taskmaster","color":"gold","bold":true}
data modify entity @s CustomNameVisible set value 1b

# Unlock all trade tiers
data modify entity @s VillagerData.level set value 5

# Initialize scoreboards
scoreboard players add @s more_professions_offers 0
scoreboard players add @s more_professions_trade_progress 0
scoreboard players add @s more_professions_visible_trade_progress 0

# Setup trades
function evercraft:professions/jobs/taskmaster/setup_all_trades

# XP
data modify entity @s Xp set value 1

# Effects
particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0 20
