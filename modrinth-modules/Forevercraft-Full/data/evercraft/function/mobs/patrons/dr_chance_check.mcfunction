# DR-Aware Patron Spawn Chance
# Run as: candidate mob, at mob position
# Checks nearest player's DR and rolls with scaled patron spawn chance
# If roll passes, calls roll_rarity to convert the mob

# Get nearest player's DR (luck attribute x10)
execute store result score #p_dr ec.temp run attribute @p luck get 10

# Determine if new moon night (2x rates)
scoreboard players set #is_newmoon ec.temp 0
execute if score #moon_phase ec.var matches 4 if score #visual_time ec.var matches 13000..23000 run scoreboard players set #is_newmoon ec.temp 1

# DR 40+ (400+): 30% normal / 60% new moon
execute if score #p_dr ec.temp matches 400.. if score #is_newmoon ec.temp matches 0 if predicate {"condition":"minecraft:random_chance","chance":0.30} run return run function evercraft:mobs/patrons/roll_rarity
execute if score #p_dr ec.temp matches 400.. if score #is_newmoon ec.temp matches 1 if predicate {"condition":"minecraft:random_chance","chance":0.60} run return run function evercraft:mobs/patrons/roll_rarity
execute if score #p_dr ec.temp matches 400.. run return 0

# DR 30-39 (300-399): 25% / 50%
execute if score #p_dr ec.temp matches 300..399 if score #is_newmoon ec.temp matches 0 if predicate {"condition":"minecraft:random_chance","chance":0.25} run return run function evercraft:mobs/patrons/roll_rarity
execute if score #p_dr ec.temp matches 300..399 if score #is_newmoon ec.temp matches 1 if predicate {"condition":"minecraft:random_chance","chance":0.50} run return run function evercraft:mobs/patrons/roll_rarity
execute if score #p_dr ec.temp matches 300..399 run return 0

# DR 20-29 (200-299): 20% / 40%
execute if score #p_dr ec.temp matches 200..299 if score #is_newmoon ec.temp matches 0 if predicate {"condition":"minecraft:random_chance","chance":0.20} run return run function evercraft:mobs/patrons/roll_rarity
execute if score #p_dr ec.temp matches 200..299 if score #is_newmoon ec.temp matches 1 if predicate {"condition":"minecraft:random_chance","chance":0.40} run return run function evercraft:mobs/patrons/roll_rarity
execute if score #p_dr ec.temp matches 200..299 run return 0

# DR 15-19 (150-199): 15% / 30%
execute if score #p_dr ec.temp matches 150..199 if score #is_newmoon ec.temp matches 0 if predicate {"condition":"minecraft:random_chance","chance":0.15} run return run function evercraft:mobs/patrons/roll_rarity
execute if score #p_dr ec.temp matches 150..199 if score #is_newmoon ec.temp matches 1 if predicate {"condition":"minecraft:random_chance","chance":0.30} run return run function evercraft:mobs/patrons/roll_rarity
execute if score #p_dr ec.temp matches 150..199 run return 0

# DR 10-14 (100-149): 12% / 24%
execute if score #p_dr ec.temp matches 100..149 if score #is_newmoon ec.temp matches 0 if predicate {"condition":"minecraft:random_chance","chance":0.12} run return run function evercraft:mobs/patrons/roll_rarity
execute if score #p_dr ec.temp matches 100..149 if score #is_newmoon ec.temp matches 1 if predicate {"condition":"minecraft:random_chance","chance":0.24} run return run function evercraft:mobs/patrons/roll_rarity
execute if score #p_dr ec.temp matches 100..149 run return 0

# DR 5-9 (50-99): 10% / 20%
execute if score #p_dr ec.temp matches 50..99 if score #is_newmoon ec.temp matches 0 if predicate {"condition":"minecraft:random_chance","chance":0.10} run return run function evercraft:mobs/patrons/roll_rarity
execute if score #p_dr ec.temp matches 50..99 if score #is_newmoon ec.temp matches 1 if predicate {"condition":"minecraft:random_chance","chance":0.20} run return run function evercraft:mobs/patrons/roll_rarity
execute if score #p_dr ec.temp matches 50..99 run return 0

# DR 0-4 (0-49): base rates 7.5% / 15%
execute if score #is_newmoon ec.temp matches 1 if predicate {"condition":"minecraft:random_chance","chance":0.15} run return run function evercraft:mobs/patrons/roll_rarity
execute if predicate {"condition":"minecraft:random_chance","chance":0.075} run function evercraft:mobs/patrons/roll_rarity
