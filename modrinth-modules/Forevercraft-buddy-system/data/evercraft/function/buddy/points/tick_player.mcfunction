# Buddy Points — Per-Player Tick (1s schedule)
# @s = player with a buddy, position context set
# Checks all delta-based point sources

# Set #Search for ownership predicate (multiplayer — only detect YOUR buddy)
scoreboard players operation #Search companion.id = @s companion.id

# === PROXIMITY (+1/min, within 16 blocks) ===
# Check if buddy entity is nearby (ownership-verified)
execute if entity @e[tag=ec.bd_buddy,type=#evercraft:tameable_companions,distance=..16,predicate=evercraft:buddy/check_owner,limit=1] run scoreboard players add @s ec.bd_prox_timer 1

# Thunderstorm doubles proximity rate
execute if predicate evercraft:buddy/is_thundering if entity @e[tag=ec.bd_buddy,type=#evercraft:tameable_companions,distance=..16,predicate=evercraft:buddy/check_owner,limit=1] run scoreboard players add @s ec.bd_prox_timer 1

# Award at 60 seconds
execute if score @s ec.bd_prox_timer matches 60.. run scoreboard players set #bd_pts_add ec.temp 1
execute if score @s ec.bd_prox_timer matches 60.. run function evercraft:buddy/points/add_points
execute if score @s ec.bd_prox_timer matches 60.. run scoreboard players set @s ec.bd_prox_timer 0

# Reset timer if buddy not nearby (reset proximity chain)
execute unless entity @e[tag=ec.bd_buddy,type=#evercraft:tameable_companions,distance=..16,predicate=evercraft:buddy/check_owner,limit=1] run scoreboard players set @s ec.bd_prox_timer 0

# === WALKING (+7 per 1000 blocks walked together) ===
# Only accumulate when buddy is nearby
execute if entity @e[tag=ec.bd_buddy,type=#evercraft:tameable_companions,distance=..16,predicate=evercraft:buddy/check_owner,limit=1] run function evercraft:buddy/points/walking

# === NEAR-DEATH (+10, survive below 2 hearts) ===
execute store result score #bd_health ec.temp run data get entity @s Health 1
execute if score #bd_health ec.temp matches ..4 if entity @e[tag=ec.bd_buddy,type=#evercraft:tameable_companions,distance=..16,predicate=evercraft:buddy/check_owner,limit=1] unless entity @s[tag=ec.bd_neardeath_cd] run function evercraft:buddy/points/near_death

# === FISHING (delta-based, +1 per fish) ===
function evercraft:buddy/points/fishing

# === MINING (delta-based, +1 per ore) ===
function evercraft:buddy/points/mining

# === COMBAT (delta-based, +1 per mob kill with buddy nearby) ===
function evercraft:buddy/points/combat_delta

# === STRUCTURE EXPLORE (delta-based, +15 per new structure) ===
function evercraft:buddy/points/explore_delta
