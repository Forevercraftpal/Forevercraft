# Mining Trial — Build Arena
# Run as/at: the player (arena center based on their X/Z + Y=300)
# Arena: 48x32x48 box of stone with tier-specific ore placement
# Player spawns at center-top

# Get arena coordinates
execute store result storage evercraft:trials ax int 1 run scoreboard players get @s ec.tt_arena_x
execute store result storage evercraft:trials az int 1 run scoreboard players get @s ec.tt_arena_z

# === PHASE 1: Build shell ===
# Floor (stone bricks, 48x1x48 at Y=299)
function evercraft:craftforever/trials/types/mining/build_shell with storage evercraft:trials

# === PHASE 2: Tier-specific ore placement ===
execute if score @s ec.tt_tier matches 1 run function evercraft:craftforever/trials/types/mining/build_t1 with storage evercraft:trials
execute if score @s ec.tt_tier matches 2 run function evercraft:craftforever/trials/types/mining/build_t2 with storage evercraft:trials
execute if score @s ec.tt_tier matches 3 run function evercraft:craftforever/trials/types/mining/build_t3 with storage evercraft:trials
execute if score @s ec.tt_tier matches 4 run function evercraft:craftforever/trials/types/mining/build_t4 with storage evercraft:trials
execute if score @s ec.tt_tier matches 5 run function evercraft:craftforever/trials/types/mining/build_t5 with storage evercraft:trials
execute if score @s ec.tt_tier matches 6 run function evercraft:craftforever/trials/types/mining/build_t6 with storage evercraft:trials
execute if score @s ec.tt_tier matches 7 run function evercraft:craftforever/trials/types/mining/build_t7 with storage evercraft:trials
execute if score @s ec.tt_tier matches 8 run function evercraft:craftforever/trials/types/mining/build_t8 with storage evercraft:trials
execute if score @s ec.tt_tier matches 9 run function evercraft:craftforever/trials/types/mining/build_t9 with storage evercraft:trials
execute if score @s ec.tt_tier matches 10 run function evercraft:craftforever/trials/types/mining/build_t10 with storage evercraft:trials

# === PHASE 3: Spawn platform (clear 5x5x4 at center, Y=301-304) ===
function evercraft:craftforever/trials/types/mining/build_spawn with storage evercraft:trials

# Place glowstone for lighting
function evercraft:craftforever/trials/types/mining/build_lights with storage evercraft:trials
