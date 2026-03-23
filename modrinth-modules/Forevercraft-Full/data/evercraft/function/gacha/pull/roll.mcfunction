# Roll for gacha tier using RNG + pity system
# Sets #gacha_tier ec.temp: 1=common, 2=uncommon, 3=rare, 4=ornate, 5=exquisite, 6=mythical
# Runs as @s = player

# === HARD PITY CHECK (30 pulls without Ornate+) ===
execute if score @s ec.wish_soft matches 30.. run return run function evercraft:gacha/pull/determine_tier_hard_pity

# === 10-PULL PITY CHECK (10 pulls without Rare+) ===
execute if score @s ec.wish_pity matches 10.. run return run function evercraft:gacha/pull/determine_tier_10_pity

# === STANDARD ROLL ===
# Generate random number 1-1000
execute store result score #gacha_roll ec.temp run random value 1..1000

# === DREAM RATE BONUS ===
# Luck attribute = Dream Rate (Crumb of Dreams +1, Dreamdust Crystal +2.5)
# Negligible boost: +1 DR per 5 luck → DR 50 = -10 roll (1% boost)
execute store result score #dr_bonus ec.temp run attribute @s luck get 1
execute if score #dr_bonus ec.temp matches 1.. run scoreboard players operation #dr_bonus ec.temp /= #5 ec.const
execute if score #dr_bonus ec.temp matches 1.. run scoreboard players operation #gacha_roll ec.temp -= #dr_bonus ec.temp
execute if score #gacha_roll ec.temp matches ..0 run scoreboard players set #gacha_roll ec.temp 1

# Check if soft pity active (20+ pulls without Ornate+) — boosted rates
execute if score @s ec.wish_soft matches 20.. run return run function evercraft:gacha/pull/determine_tier_soft

# === BASE RATES (out of 1000) ===
# Mythical: 0.2% (1-2), Exquisite: 5% (3-52), Ornate: 8% (53-132)
# Rare: 15% (133-282), Uncommon: 25% (283-532), Common: 46.8% (533-1000)

# During Convergence: Mythical boosted to 0.3% (1-3)
execute if score #gacha_convergence ec.var matches 1 if score #gacha_roll ec.temp matches 1..3 run return run scoreboard players set #gacha_tier ec.temp 6

execute if score #gacha_roll ec.temp matches 1..2 run return run scoreboard players set #gacha_tier ec.temp 6
execute if score #gacha_roll ec.temp matches 3..52 run return run scoreboard players set #gacha_tier ec.temp 5
execute if score #gacha_roll ec.temp matches 53..132 run return run scoreboard players set #gacha_tier ec.temp 4
execute if score #gacha_roll ec.temp matches 133..282 run return run scoreboard players set #gacha_tier ec.temp 3
execute if score #gacha_roll ec.temp matches 283..532 run return run scoreboard players set #gacha_tier ec.temp 2
scoreboard players set #gacha_tier ec.temp 1
