# Advantage Trees — Sync Stats Per-Player
# OPT: Consolidates 8 @a scans into 1 per-player call

# Walking: convert centimeters to blocks (divide by 100)
function evercraft:advantage/track/sync_walking

# Crouching: convert centimeters to blocks
function evercraft:advantage/track/sync_crouching

# Fish caught: copy from vanilla stat minus baseline
scoreboard players operation @s adv.stat_fish = @s adv.fish_ct
scoreboard players operation @s adv.stat_fish -= @s adv.base_fish

# Mob kills: copy from vanilla stat minus baseline
scoreboard players operation @s adv.stat_mobs = @s adv.mob_kills
scoreboard players operation @s adv.stat_mobs -= @s adv.base_mobs

# Smelting: sum of furnace + blast furnace + smoker interactions minus baseline
function evercraft:advantage/track/sync_smelting

# Mining: recompute clean total from raw ec.break_* scores
function evercraft:advantage/track/sync_mining
