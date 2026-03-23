# DR-Aware Furia Spawn Chance
# Run as: candidate mob, at mob position
# Checks nearest player's DR and rolls with scaled furia spawn chance
# If roll passes, calls roll_tier to convert the mob

# Get nearest player's DR (luck attribute x10)
execute store result score #p_dr ec.temp run attribute @p luck get 10

# Determine if new moon night (2x rates, capped at 100%)
scoreboard players set #is_newmoon ec.temp 0
execute if score #moon_phase ec.var matches 4 if score #visual_time ec.var matches 13000..23000 run scoreboard players set #is_newmoon ec.temp 1

# DR 40+ (400+): 60% normal / 100% new moon
execute if score #p_dr ec.temp matches 400.. if score #is_newmoon ec.temp matches 1 run return run function evercraft:mobs/furia/roll_tier
execute if score #p_dr ec.temp matches 400.. if score #is_newmoon ec.temp matches 0 if predicate {"condition":"minecraft:random_chance","chance":0.60} run return run function evercraft:mobs/furia/roll_tier
execute if score #p_dr ec.temp matches 400.. run return 0

# DR 30-39 (300-399): 55% / 100%
execute if score #p_dr ec.temp matches 300..399 if score #is_newmoon ec.temp matches 1 run return run function evercraft:mobs/furia/roll_tier
execute if score #p_dr ec.temp matches 300..399 if score #is_newmoon ec.temp matches 0 if predicate {"condition":"minecraft:random_chance","chance":0.55} run return run function evercraft:mobs/furia/roll_tier
execute if score #p_dr ec.temp matches 300..399 run return 0

# DR 20-29 (200-299): 50% / 100%
execute if score #p_dr ec.temp matches 200..299 if score #is_newmoon ec.temp matches 1 run return run function evercraft:mobs/furia/roll_tier
execute if score #p_dr ec.temp matches 200..299 if score #is_newmoon ec.temp matches 0 if predicate {"condition":"minecraft:random_chance","chance":0.50} run return run function evercraft:mobs/furia/roll_tier
execute if score #p_dr ec.temp matches 200..299 run return 0

# DR 15-19 (150-199): 45% / 90%
execute if score #p_dr ec.temp matches 150..199 if score #is_newmoon ec.temp matches 0 if predicate {"condition":"minecraft:random_chance","chance":0.45} run return run function evercraft:mobs/furia/roll_tier
execute if score #p_dr ec.temp matches 150..199 if score #is_newmoon ec.temp matches 1 if predicate {"condition":"minecraft:random_chance","chance":0.90} run return run function evercraft:mobs/furia/roll_tier
execute if score #p_dr ec.temp matches 150..199 run return 0

# DR 10-14 (100-149): 40% / 80%
execute if score #p_dr ec.temp matches 100..149 if score #is_newmoon ec.temp matches 0 if predicate {"condition":"minecraft:random_chance","chance":0.40} run return run function evercraft:mobs/furia/roll_tier
execute if score #p_dr ec.temp matches 100..149 if score #is_newmoon ec.temp matches 1 if predicate {"condition":"minecraft:random_chance","chance":0.80} run return run function evercraft:mobs/furia/roll_tier
execute if score #p_dr ec.temp matches 100..149 run return 0

# DR 5-9 (50-99): 35% / 70%
execute if score #p_dr ec.temp matches 50..99 if score #is_newmoon ec.temp matches 0 if predicate {"condition":"minecraft:random_chance","chance":0.35} run return run function evercraft:mobs/furia/roll_tier
execute if score #p_dr ec.temp matches 50..99 if score #is_newmoon ec.temp matches 1 if predicate {"condition":"minecraft:random_chance","chance":0.70} run return run function evercraft:mobs/furia/roll_tier
execute if score #p_dr ec.temp matches 50..99 run return 0

# DR 0-4 (0-49): base rates 30% / 60%
execute if score #is_newmoon ec.temp matches 1 if predicate {"condition":"minecraft:random_chance","chance":0.60} run return run function evercraft:mobs/furia/roll_tier
execute if predicate {"condition":"minecraft:random_chance","chance":0.30} run function evercraft:mobs/furia/roll_tier
