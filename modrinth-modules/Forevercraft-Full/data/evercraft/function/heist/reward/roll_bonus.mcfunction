# Black Market Heist — Roll Bonus Item (recursive)
# Rolls one gacha-style item, decrements counter, recurses

execute if score #heist_bonus_count ec.temp matches ..0 run return 0

# Random 1-1000 for tier (heist-weighted: skewed toward higher tiers)
execute store result score #heist_roll ec.temp run random value 1..1000

# Rates: Mythical 0.5% (1-5), Exquisite 8% (6-85), Ornate 20% (86-285),
#         Rare 35% (286-635), Uncommon 25% (636-885), Common 11.5% (886-1000)
execute if score #heist_roll ec.temp matches 1..5 run function evercraft:gacha/pull/grant_mythical
execute if score #heist_roll ec.temp matches 6..85 run function evercraft:gacha/pull/grant_exquisite
execute if score #heist_roll ec.temp matches 86..285 run function evercraft:gacha/pull/grant_ornate
execute if score #heist_roll ec.temp matches 286..635 run function evercraft:gacha/pull/grant_rare
execute if score #heist_roll ec.temp matches 636..885 run function evercraft:gacha/pull/grant_uncommon
execute if score #heist_roll ec.temp matches 886..1000 run function evercraft:gacha/pull/grant_common

scoreboard players remove #heist_bonus_count ec.temp 1
function evercraft:heist/reward/roll_bonus
