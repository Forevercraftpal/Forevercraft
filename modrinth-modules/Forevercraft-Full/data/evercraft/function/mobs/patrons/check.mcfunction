# Check for new mobs to convert to Patrons
# Runs every second, processes one mob at a time
# Base 7.5% spawn rate (scales with DR), 5-minute cooldown between Patron spawns

# Gate: skip if no players online
execute unless entity @a run return run schedule function evercraft:mobs/patrons/check 1s

# Cooldown management — OPT: single condition check instead of 4 (decrements, tags, reschedules, returns)
execute unless score #debug_boost ec.debug matches 1 if score #global patron.cooldown matches 1.. run return run function evercraft:mobs/patrons/on_cooldown

# === DEBUG BOOST: 100% patron spawn on every unprocessed mob ===
execute if score #debug_boost ec.debug matches 1 as @e[type=#evercraft:mobs/patrons/patron_targets,tag=!ec.patron.processed,tag=!ec.patron,tag=!ec.furia,limit=1,sort=random] at @s run function evercraft:mobs/patrons/roll_rarity

# DR-aware spawn chance (handles new moon internally, scales 7.5%-30% based on nearest player DR)
execute unless score #debug_boost ec.debug matches 1 as @e[type=#evercraft:mobs/patrons/patron_targets,tag=!ec.patron.processed,tag=!ec.furia,limit=1,sort=random] at @s run function evercraft:mobs/patrons/dr_chance_check

# Depth Spawn Scaling: give unprocessed mobs a second chance based on Y-level
execute unless score #debug_boost ec.debug matches 1 as @e[type=#evercraft:mobs/patrons/patron_targets,tag=!ec.patron.processed,tag=!ec.patron,tag=!ec.furia,limit=1,sort=random] at @s run function evercraft:mobs/patrons/depth_bonus

# Tag mobs that weren't converted so we don't check them again
# OPT: Cap at 50 per tick to avoid unbounded entity scan (mob farms can have 100s)
tag @e[type=#evercraft:mobs/patrons/patron_targets,tag=!ec.patron.processed,tag=!ec.patron,limit=50] add ec.patron.processed

schedule function evercraft:mobs/patrons/check 1s
