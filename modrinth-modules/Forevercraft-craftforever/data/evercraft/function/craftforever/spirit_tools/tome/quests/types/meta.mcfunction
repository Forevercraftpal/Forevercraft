# Artisan Tome — Meta check (Type 4)
# Multi-condition per-quest checks

# Q93: All-Rounder — mine 100 of 5 different ore types
execute if score @s ec.tq_sub matches 93 run function evercraft:craftforever/spirit_tools/tome/quests/types/meta/q93_all_rounder

# Q99: Master of All Trades — 75+ tome quests done AND Artisan Rank 20+
execute if score @s ec.tq_sub matches 99 run function evercraft:craftforever/spirit_tools/tome/quests/types/meta/q99_master_trades
