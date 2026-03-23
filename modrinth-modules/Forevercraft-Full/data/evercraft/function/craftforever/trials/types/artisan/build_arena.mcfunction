# Artisan Trial — Build Arena
# Run as/at: the player (arena coords from scoreboard)
# Arena: 48x25x48 box at Y=299-324

# Get arena coordinates
execute store result storage evercraft:trials ax int 1 run scoreboard players get @s ec.tt_arena_x
execute store result storage evercraft:trials az int 1 run scoreboard players get @s ec.tt_arena_z

# === PHASE 1: Build shell ===
function evercraft:craftforever/trials/types/artisan/build_shell with storage evercraft:trials

# === PHASE 2: Tier-specific content ===
execute if score @s ec.tt_tier matches 1 run function evercraft:craftforever/trials/types/artisan/build_t1 with storage evercraft:trials
execute if score @s ec.tt_tier matches 2 run function evercraft:craftforever/trials/types/artisan/build_t2 with storage evercraft:trials
execute if score @s ec.tt_tier matches 3 run function evercraft:craftforever/trials/types/artisan/build_t3 with storage evercraft:trials
execute if score @s ec.tt_tier matches 4 run function evercraft:craftforever/trials/types/artisan/build_t4 with storage evercraft:trials
execute if score @s ec.tt_tier matches 5 run function evercraft:craftforever/trials/types/artisan/build_t5 with storage evercraft:trials
execute if score @s ec.tt_tier matches 6 run function evercraft:craftforever/trials/types/artisan/build_t6 with storage evercraft:trials
execute if score @s ec.tt_tier matches 7 run function evercraft:craftforever/trials/types/artisan/build_t7 with storage evercraft:trials
execute if score @s ec.tt_tier matches 8 run function evercraft:craftforever/trials/types/artisan/build_t8 with storage evercraft:trials
execute if score @s ec.tt_tier matches 9 run function evercraft:craftforever/trials/types/artisan/build_t9 with storage evercraft:trials
execute if score @s ec.tt_tier matches 10 run function evercraft:craftforever/trials/types/artisan/build_t10 with storage evercraft:trials

# === PHASE 3: Spawn platform ===
function evercraft:craftforever/trials/types/artisan/build_spawn with storage evercraft:trials

# === PHASE 4: Lighting ===
function evercraft:craftforever/trials/types/artisan/build_lights with storage evercraft:trials
