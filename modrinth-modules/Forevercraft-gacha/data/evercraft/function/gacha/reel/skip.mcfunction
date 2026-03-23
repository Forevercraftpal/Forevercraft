# Skip remaining reel animations — grant current + all remaining pulls instantly
# Runs as @s = player, at @s

# Use pre-rolled sub-reward if set (tick 75+ already ran set_winning_visual)
# If not set (skip before tick 75), grant will roll fresh
scoreboard players operation #reward_roll ec.temp = @s ec.reel_sub

# Grant the current reel's reward (already rolled, tier stored in ec.reel_tier)
execute if score @s ec.reel_tier matches 1 run function evercraft:gacha/pull/grant_common
execute if score @s ec.reel_tier matches 2 run function evercraft:gacha/pull/grant_uncommon
execute if score @s ec.reel_tier matches 3 run function evercraft:gacha/pull/grant_rare
execute if score @s ec.reel_tier matches 4 run function evercraft:gacha/pull/grant_ornate
execute if score @s ec.reel_tier matches 5 run function evercraft:gacha/pull/grant_exquisite
execute if score @s ec.reel_tier matches 6 run function evercraft:gacha/pull/grant_mythical

# Dreamdust for current pull
execute if score @s ec.reel_tier matches 1 run scoreboard players add @s ec.dreamdust 1
execute if score @s ec.reel_tier matches 2..3 run scoreboard players add @s ec.dreamdust 2
execute if score @s ec.reel_tier matches 4..6 run scoreboard players add @s ec.dreamdust 3
execute if score #gacha_convergence ec.var matches 1 if score @s ec.reel_tier matches 1 run scoreboard players add @s ec.dreamdust 1
execute if score #gacha_convergence ec.var matches 1 if score @s ec.reel_tier matches 2..3 run scoreboard players add @s ec.dreamdust 2
execute if score #gacha_convergence ec.var matches 1 if score @s ec.reel_tier matches 4..6 run scoreboard players add @s ec.dreamdust 3

# Pity resets for current pull
execute if score @s ec.reel_tier matches 3.. run scoreboard players set @s ec.wish_pity 0
execute if score @s ec.reel_tier matches 4.. run scoreboard players set @s ec.wish_soft 0

# Spark + achievements for current pull
execute if score @s ec.wish_spark matches 50.. run function evercraft:gacha/spark/check
function evercraft:gacha/check_achievements

# Grant all remaining pulls instantly (each will roll fresh)
function evercraft:gacha/reel/skip_remaining

# Summary
tellraw @s [{"text":"\u2726 ","color":"#E0B0FF"},{"text":"Skipped! All pulls granted.","color":"gold"},{"text":" \u2726","color":"#E0B0FF"}]

# Clean up
function evercraft:gacha/reel/cleanup
