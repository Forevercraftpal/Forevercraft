# Try to pull once from the Fountain
# Runs as @s = player

# Check cost (5 normally, 3 during Convergence)
scoreboard players set #pull_cost ec.temp 5
execute if score #gacha_convergence ec.var matches 1 run scoreboard players set #pull_cost ec.temp 3

# Check balance
execute unless score @s ec.coins >= #pull_cost ec.temp run return run tellraw @s [{"text":"\u2726 ","color":"#E0B0FF"},{"text":"Not enough Forever Coins! ","color":"red"},{"text":"Need ","color":"gray"},{"score":{"name":"#pull_cost","objective":"ec.temp"},"color":"gold"},{"text":", have ","color":"gray"},{"score":{"name":"@s","objective":"ec.coins"},"color":"gold"},{"text":" \u2726","color":"#E0B0FF"}]

# Deduct coins
scoreboard players operation @s ec.coins -= #pull_cost ec.temp

# Increment pity counters
scoreboard players add @s ec.wish_pity 1
scoreboard players add @s ec.wish_soft 1
scoreboard players add @s ec.wish_spark 1
scoreboard players add @s ec.wish_total 1
scoreboard players add #news_wishes ec.var 1

# Moon + Gacha: Full moon grants +4 bonus soft pity (total +5 per pull)
execute if score #moon_phase ec.var matches 0 run scoreboard players add @s ec.wish_soft 4
execute if score #moon_phase ec.var matches 0 run tellraw @s [{text:"  ",color:"light_purple"},{text:"The Fountain shimmers under the full moon... (+5 pity)",color:"#E0B0FF",italic:true}]

# Roll for tier
function evercraft:gacha/pull/roll

# Grant reward based on rolled tier (#gacha_tier ec.temp: 1=common..6=mythical)
# Reset pre-roll flag so grant functions roll fresh (reel sets this > 0)
scoreboard players set #reward_roll ec.temp 0
execute if score #gacha_tier ec.temp matches 1 run function evercraft:gacha/pull/grant_common
execute if score #gacha_tier ec.temp matches 2 run function evercraft:gacha/pull/grant_uncommon
execute if score #gacha_tier ec.temp matches 3 run function evercraft:gacha/pull/grant_rare
execute if score #gacha_tier ec.temp matches 4 run function evercraft:gacha/pull/grant_ornate
execute if score #gacha_tier ec.temp matches 5 run function evercraft:gacha/pull/grant_exquisite
execute if score #gacha_tier ec.temp matches 6 run function evercraft:gacha/pull/grant_mythical

# Grant dreamdust consolation (1=common, 2=uncommon/rare, 3=ornate+)
execute if score #gacha_tier ec.temp matches 1 run scoreboard players add @s ec.dreamdust 1
execute if score #gacha_tier ec.temp matches 2..3 run scoreboard players add @s ec.dreamdust 2
execute if score #gacha_tier ec.temp matches 4..6 run scoreboard players add @s ec.dreamdust 3
# Double dreamdust during Convergence
execute if score #gacha_convergence ec.var matches 1 if score #gacha_tier ec.temp matches 1 run scoreboard players add @s ec.dreamdust 1
execute if score #gacha_convergence ec.var matches 1 if score #gacha_tier ec.temp matches 2..3 run scoreboard players add @s ec.dreamdust 2
execute if score #gacha_convergence ec.var matches 1 if score #gacha_tier ec.temp matches 4..6 run scoreboard players add @s ec.dreamdust 3

# Reset pity counters on good pulls
execute if score #gacha_tier ec.temp matches 3.. run scoreboard players set @s ec.wish_pity 0
execute if score #gacha_tier ec.temp matches 4.. run scoreboard players set @s ec.wish_soft 0

# Check spark threshold
execute if score @s ec.wish_spark matches 50.. run function evercraft:gacha/spark/check

# Check achievements
function evercraft:gacha/check_achievements

# Play pull animation particles
particle end_rod ~ ~1.5 ~ 0.5 1 0.5 0.05 30 force @s
particle enchant ~ ~1 ~ 0.3 0.5 0.3 1 20 force @s
playsound minecraft:block.beacon.activate master @s ~ ~ ~ 0.7 1.4
