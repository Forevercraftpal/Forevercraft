# Animated 10-pull — deduct all coins upfront, animate each pull sequentially
# Runs as @s = player, at @s

# Per-pull cost (5 normally, 3 during Convergence)
scoreboard players set #pull_unit ec.temp 5
execute if score #gacha_convergence ec.var matches 1 run scoreboard players set #pull_unit ec.temp 3

# Calculate how many of the 10 pulls are covered by banked bonus (cap at 10)
scoreboard players set #free_pulls ec.temp 0
execute if score @s ec.wish_bonus matches 1.. run scoreboard players operation #free_pulls ec.temp = @s ec.wish_bonus
execute if score #free_pulls ec.temp matches 11.. run scoreboard players set #free_pulls ec.temp 10

# Paid pulls = 10 - free pulls
scoreboard players set #paid_pulls ec.temp 10
scoreboard players operation #paid_pulls ec.temp -= #free_pulls ec.temp

# Total coin cost = paid_pulls * per-pull cost
scoreboard players operation #pull10_cost ec.temp = #paid_pulls ec.temp
scoreboard players operation #pull10_cost ec.temp *= #pull_unit ec.temp

# Check balance
execute unless score @s ec.coins >= #pull10_cost ec.temp run return run tellraw @s [{"text":"\u2726 ","color":"#E0B0FF"},{"text":"Not enough Forever Coins! ","color":"red"},{"text":"Need ","color":"gray"},{"score":{"name":"#pull10_cost","objective":"ec.temp"},"color":"gold"},{"text":", have ","color":"gray"},{"score":{"name":"@s","objective":"ec.coins"},"color":"gold"},{"text":" \u2726","color":"#E0B0FF"}]

# Deduct coins and consume banked pulls
scoreboard players operation @s ec.coins -= #pull10_cost ec.temp
scoreboard players operation @s ec.wish_bonus -= #free_pulls ec.temp
execute if score #free_pulls ec.temp matches 1.. run tellraw @s [{"text":"\u2726 ","color":"gold"},{"text":"Used ","color":"yellow"},{"score":{"name":"#free_pulls","objective":"ec.temp"},"color":"gold"},{"text":" bonus pull(s)! ","color":"yellow"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"ec.wish_bonus"},"color":"gold"},{"text":" remaining)","color":"gray"}]

# Set up multi-pull tracking (9 remaining after first)
scoreboard players set @s ec.reel_count 9
scoreboard players set @s ec.reel_pull 1

# First pull: increment pity + roll
scoreboard players add @s ec.wish_pity 1
scoreboard players add @s ec.wish_soft 1
scoreboard players add @s ec.wish_spark 1
scoreboard players add @s ec.wish_total 1
function evercraft:gacha/pull/roll
scoreboard players operation @s ec.reel_tier = #gacha_tier ec.temp

# Initialize reel tick
scoreboard players set @s ec.reel_tick 0

# Kill existing fountain menu entities
kill @e[tag=ec.FountainElement,distance=..20]

# Spawn reel in front of player (player-relative)
execute at @s rotated ~ 0 run function evercraft:gacha/reel/spawn

# Show pull counter
tellraw @s [{"text":"\u2726 ","color":"#E0B0FF"},{"text":"Pull 1/10","color":"gold","bold":true},{"text":" \u2726","color":"#E0B0FF"}]

# Play start sound
playsound minecraft:block.beacon.activate master @s ~ ~ ~ 0.7 1.4
