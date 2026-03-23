# Showcase — Pick one random entry from temp.unlocked, move to temp.picks
# #sc_max = count-1 (max index)

# Generate random index
execute store result storage evercraft:showcase temp.rand_idx int 1 run random value 0..100
execute store result score #sc_rand ec.temp run data get storage evercraft:showcase temp.rand_idx
scoreboard players operation #sc_rand ec.temp %= #sc_count ec.temp

# Store the index for macro
execute store result storage evercraft:showcase temp.rand_idx int 1 run scoreboard players get #sc_rand ec.temp

# Copy entry at random index to picks, then remove from unlocked
function evercraft:codex/friends/showcase/pick_one_inner with storage evercraft:showcase temp
