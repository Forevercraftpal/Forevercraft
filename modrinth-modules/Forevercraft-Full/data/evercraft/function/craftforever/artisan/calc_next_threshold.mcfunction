# Artisan Rank — Calculate next XP threshold from lookup table
# Uses macro to index into storage array by current rank

execute store result storage evercraft:craftforever rank_idx int 1 run scoreboard players get @s ec.cf_rank
function evercraft:craftforever/artisan/set_threshold with storage evercraft:craftforever
