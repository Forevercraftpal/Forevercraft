# Guild Expedition — Give rewards to one player
# @s = guild member
# Input: #gexp_coins, #gexp_xp, #gexp_crate_tier ec.temp

# Coins
scoreboard players operation @s ec.coins += #gexp_coins ec.temp

# XP (experience points, not guild XP)
execute store result storage evercraft:expedition temp.amount int 1 run scoreboard players get #gexp_xp ec.temp
execute if score #gexp_xp ec.temp matches 1.. run function evercraft:guild/expedition/reward/give_xp with storage evercraft:expedition temp

# Crate (tier 1=common, 2=uncommon, 3=rare)
execute if score #gexp_crate_tier ec.temp matches 1 run loot give @s loot evercraft:achievements/crates/common
execute if score #gexp_crate_tier ec.temp matches 2 run loot give @s loot evercraft:achievements/crates/uncommon
execute if score #gexp_crate_tier ec.temp matches 3 run loot give @s loot evercraft:achievements/crates/rare

# Guild contribution (flat 10 points)
function evercraft:guild/contribution/add {amount:10}

# Individual reward notification
execute store result storage evercraft:expedition temp.coins int 1 run scoreboard players get #gexp_coins ec.temp
execute store result storage evercraft:expedition temp.xp int 1 run scoreboard players get #gexp_xp ec.temp
function evercraft:guild/expedition/reward/notify with storage evercraft:expedition temp
