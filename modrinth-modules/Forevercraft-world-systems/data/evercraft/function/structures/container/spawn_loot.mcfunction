# Spawn a temporary loot container for the player
# Tier is in cf.tier scoreboard, position stored in cf.pos_x/y/z
# Run as player

# Check if already looted using marker approach
# OPT: Use macro positioned instead of summon/teleport/kill temp marker
tag @s add cf.checking_player

# Store position scores to storage for macro
execute store result storage evercraft:cf_temp x int 1 run scoreboard players get @s cf.pos_x
execute store result storage evercraft:cf_temp y int 1 run scoreboard players get @s cf.pos_y
execute store result storage evercraft:cf_temp z int 1 run scoreboard players get @s cf.pos_z

# Use positioned macro to check for looted markers at the stored position
function evercraft:structures/container/check_at_pos with storage evercraft:cf_temp

tag @s remove cf.checking_player

# If spawn flag is still 1, no matching marker found - spawn loot
# NOTE: mark_looted is now called at END of spawn_loot_here to ensure
# we only mark as looted AFTER successful loot spawn (not if dream gated)
scoreboard players set #cf_is_refresh cf.temp 0
execute if score #spawn_loot cf.temp matches 1 run function evercraft:structures/container/create_container
# Guild Diplomacy Event: Mining Crates scoring
execute if score #spawn_loot cf.temp matches 1 if score #gd_event_active ec.var matches 1 if score #gd_event_activity ec.var matches 2 if score @s ec.gd_event_active matches 1 run scoreboard players add @s ec.gd_event_score 1

# Guild XP from structure crate opening (by tier): common=1, uncommon=3, rare=8, ornate=20
execute if score #spawn_loot cf.temp matches 1 if score @s cf.tier matches 1 run function evercraft:guild/contribution/add_guild_xp_direct {amount:1}
execute if score #spawn_loot cf.temp matches 1 if score @s cf.tier matches 2 run function evercraft:guild/contribution/add_guild_xp_direct {amount:3}
execute if score #spawn_loot cf.temp matches 1 if score @s cf.tier matches 3 run function evercraft:guild/contribution/add_guild_xp_direct {amount:8}
execute if score #spawn_loot cf.temp matches 1 if score @s cf.tier matches 4 run function evercraft:guild/contribution/add_guild_xp_direct {amount:20}
execute if score #spawn_loot cf.temp matches 1 if score @s cf.tier matches 5 run function evercraft:guild/contribution/add_guild_xp_direct {amount:50}
execute if score #spawn_loot cf.temp matches 1 if score @s cf.tier matches 6 run function evercraft:guild/contribution/add_guild_xp_direct {amount:150}

# If already looted (spawn_loot = 0), show the player the remaining refresh time
execute if score #spawn_loot cf.temp matches 0 if score #looted_timer cf.temp matches 1.. run function evercraft:structures/storage/show_looted_feedback
