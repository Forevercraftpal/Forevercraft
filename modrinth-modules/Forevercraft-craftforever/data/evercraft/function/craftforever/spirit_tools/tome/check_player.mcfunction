# Artisan Tome — Per-player progress check dispatcher
# Branches on quest type to appropriate check function

# Grace period: skip first 2 checks after activation to prevent instant completion
execute if score @s ec.tq_grace matches 1.. run scoreboard players remove @s ec.tq_grace 1
execute if score @s ec.tq_grace matches 1.. run return fail

# Type 1: Stat delta (mining, logging, farming, fishing, etc.)
execute if score @s ec.tq_type matches 1 run function evercraft:craftforever/spirit_tools/tome/quests/types/stat_delta

# Type 2: Threshold (check existing scoreboard directly)
execute if score @s ec.tq_type matches 2 run function evercraft:craftforever/spirit_tools/tome/quests/types/threshold

# Type 3: Interact (per-quest one-off condition checks)
execute if score @s ec.tq_type matches 3 run function evercraft:craftforever/spirit_tools/tome/quests/types/interact

# Type 4: Meta (multi-condition special checks)
execute if score @s ec.tq_type matches 4 run function evercraft:craftforever/spirit_tools/tome/quests/types/meta
