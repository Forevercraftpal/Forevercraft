# Check gacha achievement milestones
# Called after each pull (or periodically)
# Runs as @s = player

# "First Wish" — handled by first_coin.mcfunction

# "Dreamy Star" — Pull a Mythical (granted inline in grant_mythical)

# "Dedicated Dreamer" — 50 total pulls
execute if score @s ec.wish_total matches 50 run advancement grant @s only evercraft:gacha/dedicated_dreamer

# "Fortune Favors the Bold" — 100 total pulls
execute if score @s ec.wish_total matches 100 run advancement grant @s only evercraft:gacha/fortune_favors

# "Eternal Wisher" — 500 total pulls
execute if score @s ec.wish_total matches 500 run advancement grant @s only evercraft:gacha/eternal_wisher

# "Full Constellation" — 3 constellation fragments
execute if score @s ec.const_frag matches 3 run advancement grant @s only evercraft:gacha/full_constellation
