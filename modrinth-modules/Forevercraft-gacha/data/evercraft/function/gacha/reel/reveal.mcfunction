# Reveal the final reward — RS4 was already set by set_winning_visual at tick 75
# Runs as @s = player, at @s
# ec.reel_tier on @s, ec.reel_sub on @s (pre-rolled by set_winning_visual)
# NO visual changes here — the winning item is already showing in RS4

# === COPY PRE-ROLLED SUB-REWARD TO #reward_roll FOR GRANT FUNCTIONS ===
scoreboard players operation #reward_roll ec.temp = @s ec.reel_sub

# === GRANT THE ACTUAL REWARD ===
# Grant functions will use #reward_roll ec.temp (pre-set) instead of re-rolling
execute if score @s ec.reel_tier matches 1 run function evercraft:gacha/pull/grant_common
execute if score @s ec.reel_tier matches 2 run function evercraft:gacha/pull/grant_uncommon
execute if score @s ec.reel_tier matches 3 run function evercraft:gacha/pull/grant_rare
execute if score @s ec.reel_tier matches 4 run function evercraft:gacha/pull/grant_ornate
execute if score @s ec.reel_tier matches 5 run function evercraft:gacha/pull/grant_exquisite
execute if score @s ec.reel_tier matches 6 run function evercraft:gacha/pull/grant_mythical

# === DREAMDUST CONSOLATION ===
execute if score @s ec.reel_tier matches 1 run scoreboard players add @s ec.dreamdust 1
execute if score @s ec.reel_tier matches 2..3 run scoreboard players add @s ec.dreamdust 2
execute if score @s ec.reel_tier matches 4..6 run scoreboard players add @s ec.dreamdust 3
execute if score #gacha_convergence ec.var matches 1 if score @s ec.reel_tier matches 1 run scoreboard players add @s ec.dreamdust 1
execute if score #gacha_convergence ec.var matches 1 if score @s ec.reel_tier matches 2..3 run scoreboard players add @s ec.dreamdust 2
execute if score #gacha_convergence ec.var matches 1 if score @s ec.reel_tier matches 4..6 run scoreboard players add @s ec.dreamdust 3

# === PITY RESETS ===
execute if score @s ec.reel_tier matches 3.. run scoreboard players set @s ec.wish_pity 0
execute if score @s ec.reel_tier matches 4.. run scoreboard players set @s ec.wish_soft 0

# === SPARK CHECK + ACHIEVEMENTS ===
execute if score @s ec.wish_spark matches 50.. run function evercraft:gacha/spark/check
function evercraft:gacha/check_achievements

# === CELEBRATION EFFECTS ===
particle end_rod ~ ~1.5 ~ 0.5 1 0.5 0.05 30 force @s
particle enchant ~ ~1 ~ 0.3 0.5 0.3 1 20 force @s

# Schedule cleanup after a brief pause to let player see the result
# Set tick to 90 — cleanup triggers at 95
scoreboard players set @s ec.reel_tick 90
