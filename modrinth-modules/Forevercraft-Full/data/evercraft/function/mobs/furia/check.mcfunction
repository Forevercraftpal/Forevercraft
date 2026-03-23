# Check for new mobs to convert to Furia
# Runs every second, base 30% spawn rate (scales with DR), 2.5min cooldown

# Gate: skip if no players online
execute unless entity @a run return run schedule function evercraft:mobs/furia/check 1s

# OPT: Single condition check for cooldown (was 4 duplicate conditions)
execute unless score #debug_boost ec.debug matches 1 if score #global furia.cooldown matches 1.. run return run function evercraft:mobs/furia/on_cooldown

# === DEBUG BOOST: 100% furia spawn on every unprocessed mob ===
execute if score #debug_boost ec.debug matches 1 as @e[type=#evercraft:mobs/furia/furia_targets,tag=!ec.furia.processed,tag=!ec.furia,tag=!ec.patron,limit=1,sort=random] at @s run function evercraft:mobs/furia/roll_tier

# DR-aware spawn chance (handles new moon internally, scales 30%-60% based on nearest player DR)
execute unless score #debug_boost ec.debug matches 1 as @e[type=#evercraft:mobs/furia/furia_targets,tag=!ec.furia.processed,tag=!ec.patron,limit=1,sort=random] at @s run function evercraft:mobs/furia/dr_chance_check

# Depth Spawn Scaling: give unprocessed mobs a second chance based on Y-level
execute unless score #debug_boost ec.debug matches 1 as @e[type=#evercraft:mobs/furia/furia_targets,tag=!ec.furia.processed,tag=!ec.furia,tag=!ec.patron,limit=1,sort=random] at @s run function evercraft:mobs/furia/depth_bonus

# Tag mobs that weren't converted so we don't check them again
# OPT: Cap at 50 per tick to avoid unbounded entity scan (mob farms)
tag @e[type=#evercraft:mobs/furia/furia_targets,tag=!ec.furia.processed,tag=!ec.furia,limit=50] add ec.furia.processed

schedule function evercraft:mobs/furia/check 1s
