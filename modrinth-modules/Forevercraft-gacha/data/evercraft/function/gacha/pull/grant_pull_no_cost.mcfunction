# Execute one complete pull WITHOUT cost deduction
# Used by skip system when coins were already deducted upfront
# Runs as @s = player

# Increment pity counters
scoreboard players add @s ec.wish_pity 1
scoreboard players add @s ec.wish_soft 1
scoreboard players add @s ec.wish_spark 1
scoreboard players add @s ec.wish_total 1

# Roll for tier
function evercraft:gacha/pull/roll

# Grant reward based on rolled tier (reset pre-roll flag so grants roll fresh)
scoreboard players set #reward_roll ec.temp 0
execute if score #gacha_tier ec.temp matches 1 run function evercraft:gacha/pull/grant_common
execute if score #gacha_tier ec.temp matches 2 run function evercraft:gacha/pull/grant_uncommon
execute if score #gacha_tier ec.temp matches 3 run function evercraft:gacha/pull/grant_rare
execute if score #gacha_tier ec.temp matches 4 run function evercraft:gacha/pull/grant_ornate
execute if score #gacha_tier ec.temp matches 5 run function evercraft:gacha/pull/grant_exquisite
execute if score #gacha_tier ec.temp matches 6 run function evercraft:gacha/pull/grant_mythical

# Grant dreamdust consolation
execute if score #gacha_tier ec.temp matches 1 run scoreboard players add @s ec.dreamdust 1
execute if score #gacha_tier ec.temp matches 2..3 run scoreboard players add @s ec.dreamdust 2
execute if score #gacha_tier ec.temp matches 4..6 run scoreboard players add @s ec.dreamdust 3
execute if score #gacha_convergence ec.var matches 1 if score #gacha_tier ec.temp matches 1 run scoreboard players add @s ec.dreamdust 1
execute if score #gacha_convergence ec.var matches 1 if score #gacha_tier ec.temp matches 2..3 run scoreboard players add @s ec.dreamdust 2
execute if score #gacha_convergence ec.var matches 1 if score #gacha_tier ec.temp matches 4..6 run scoreboard players add @s ec.dreamdust 3

# Reset pity counters on good pulls
execute if score #gacha_tier ec.temp matches 3.. run scoreboard players set @s ec.wish_pity 0
execute if score #gacha_tier ec.temp matches 4.. run scoreboard players set @s ec.wish_soft 0

# Check spark threshold + achievements
execute if score @s ec.wish_spark matches 50.. run function evercraft:gacha/spark/check
function evercraft:gacha/check_achievements

# Pull particles
particle end_rod ~ ~1.5 ~ 0.5 1 0.5 0.05 30 force @s
particle enchant ~ ~1 ~ 0.3 0.5 0.3 1 20 force @s
playsound minecraft:block.beacon.activate master @s ~ ~ ~ 0.7 1.4
