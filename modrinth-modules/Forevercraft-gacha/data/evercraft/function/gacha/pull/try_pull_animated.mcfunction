# Animated single pull — deduct cost, roll tier, spawn reel animation
# Reward is granted later by reel/reveal.mcfunction when animation completes
# Runs as @s = player, at @s

# Check for banked bonus pulls from Coin of Lucidity (free pull)
execute if score @s ec.wish_bonus matches 1.. run tag @s add ec.gacha_free_pull
execute if entity @s[tag=ec.gacha_free_pull] run scoreboard players remove @s ec.wish_bonus 1
execute if entity @s[tag=ec.gacha_free_pull] run tellraw @s [{"text":"\u2726 ","color":"gold"},{"text":"Bonus pull used! ","color":"yellow"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"ec.wish_bonus"},"color":"gold"},{"text":" remaining)","color":"gray"}]

# Check cost (5 normally, 3 during Convergence) — skip if free pull
scoreboard players set #pull_cost ec.temp 5
execute if score #gacha_convergence ec.var matches 1 run scoreboard players set #pull_cost ec.temp 3

# Check balance (skip if bonus pull)
execute unless entity @s[tag=ec.gacha_free_pull] unless score @s ec.coins >= #pull_cost ec.temp run return run tellraw @s [{"text":"\u2726 ","color":"#E0B0FF"},{"text":"Not enough Forever Coins! ","color":"red"},{"text":"Need ","color":"gray"},{"score":{"name":"#pull_cost","objective":"ec.temp"},"color":"gold"},{"text":", have ","color":"gray"},{"score":{"name":"@s","objective":"ec.coins"},"color":"gold"}]

# Deduct coins (skip if bonus pull)
execute unless entity @s[tag=ec.gacha_free_pull] run scoreboard players operation @s ec.coins -= #pull_cost ec.temp
tag @s remove ec.gacha_free_pull

# Increment pity counters
scoreboard players add @s ec.wish_pity 1
scoreboard players add @s ec.wish_soft 1
scoreboard players add @s ec.wish_spark 1
scoreboard players add @s ec.wish_total 1

# Roll for tier (sets #gacha_tier ec.temp: 1-6)
function evercraft:gacha/pull/roll

# Store rolled tier on player for reveal later
scoreboard players operation @s ec.reel_tier = #gacha_tier ec.temp

# Initialize reel tick counter
scoreboard players set @s ec.reel_tick 0

# Kill existing fountain menu entities to make room for reel
kill @e[tag=ec.FountainElement,distance=..20]

# Spawn reel in front of player (player-relative)
execute at @s rotated ~ 0 run function evercraft:gacha/reel/spawn

# Play start sound
playsound minecraft:block.beacon.activate master @s ~ ~ ~ 0.7 1.4
