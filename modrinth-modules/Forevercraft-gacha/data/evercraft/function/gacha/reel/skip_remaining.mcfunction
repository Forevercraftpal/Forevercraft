# Recursively grant remaining pulls (no cost, coins already deducted)
# Runs as @s = player
# Stops when ec.reel_count reaches 0

execute if score @s ec.reel_count matches ..0 run return 0

scoreboard players remove @s ec.reel_count 1
function evercraft:gacha/pull/grant_pull_no_cost
function evercraft:gacha/reel/skip_remaining
