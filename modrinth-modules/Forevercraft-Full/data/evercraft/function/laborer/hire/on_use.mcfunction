# Laborer Contract — Shared Hire Logic
# Called by per-type use functions (use_miner, use_farmer, etc.)
# Expects: ec.lb_hire_type set to type ID (1-6) on @s
# Expects: ec.lb_restore tag on @s (will restore contract if hire fails)

# === VALIDATE CONDITIONS ===

# Must be in home zone
execute unless score @s hs.in_zone matches 1 run function evercraft:laborer/hire/fail_no_zone
execute unless score @s hs.in_zone matches 1 run return 0

# Must have Artisan Rank requirement met
# Types 1-3 (miner/farmer/fisher) need rank 10
# Types 4-5 (woodcutter/forager) need rank 20
# Type 6 (prospector) needs rank 50
execute if score @s ec.lb_hire_type matches 1..3 unless score @s ec.cf_rank matches 10.. run function evercraft:laborer/hire/fail_no_rank
execute if score @s ec.lb_hire_type matches 1..3 unless score @s ec.cf_rank matches 10.. run return 0
execute if score @s ec.lb_hire_type matches 4..5 unless score @s ec.cf_rank matches 20.. run function evercraft:laborer/hire/fail_no_rank
execute if score @s ec.lb_hire_type matches 4..5 unless score @s ec.cf_rank matches 20.. run return 0
execute if score @s ec.lb_hire_type matches 6 unless score @s ec.cf_rank matches 50.. run function evercraft:laborer/hire/fail_no_rank
execute if score @s ec.lb_hire_type matches 6 unless score @s ec.cf_rank matches 50.. run return 0

# Must have available laborer slot
function evercraft:laborer/hire/calc_max_slots
execute if score @s ec.lb_count >= @s ec.lb_max run function evercraft:laborer/hire/fail_no_slots
execute if score @s ec.lb_count >= @s ec.lb_max run return 0

# === ALL CHECKS PASSED — Contract consumed (remove restore tag) ===
tag @s remove ec.lb_restore

# === SPAWN LABORER ===
function evercraft:laborer/hire/spawn
