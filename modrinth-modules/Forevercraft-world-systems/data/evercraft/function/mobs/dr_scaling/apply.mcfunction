# DR-Based Mob Equipment Scaling
# Run as: hostile mob (after bestiary settings applied)
# Equips mobs with gear based on nearest player's Dream Rate

# Only humanoid mobs that can visually display equipment
execute unless entity @s[type=#evercraft:mobs/dr_scaling/can_equip] run return 0

# Skip patron/furia mobs — they have their own stat system
execute if entity @s[tag=ec.patron] run return 0
execute if entity @s[tag=ec.furia] run return 0

# Get nearest player's DR (luck attribute x10)
execute store result score #mob_dr ec.temp run attribute @p luck get 10

# Below DR 5 (score 50): no scaling
execute unless score #mob_dr ec.temp matches 50.. run return 0

# 75% chance to equip DR gear
execute unless predicate {"condition":"minecraft:random_chance","chance":0.75} run return 0

# Route to appropriate tier (highest DR wins, check descending)
execute if score #mob_dr ec.temp matches 500.. run return run function evercraft:mobs/dr_scaling/tier/artifact
execute if score #mob_dr ec.temp matches 400..499 run return run function evercraft:mobs/dr_scaling/tier/netherite
execute if score #mob_dr ec.temp matches 300..399 run return run function evercraft:mobs/dr_scaling/tier/diamond
execute if score #mob_dr ec.temp matches 200..299 run return run function evercraft:mobs/dr_scaling/tier/iron
execute if score #mob_dr ec.temp matches 150..199 run return run function evercraft:mobs/dr_scaling/tier/copper
execute if score #mob_dr ec.temp matches 100..149 run return run function evercraft:mobs/dr_scaling/tier/gold_stone
execute if score #mob_dr ec.temp matches 50..99 run function evercraft:mobs/dr_scaling/tier/leather_wood
