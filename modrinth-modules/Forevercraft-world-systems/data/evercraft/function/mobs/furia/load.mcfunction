# Furia Mob System — Load
# Common scaled mobs with subtle particles, no notifications
# 3 tiers: Minor, Standard, Greater

# Configuration scoreboards
scoreboard objectives add furia.config dummy
scoreboard objectives add furia.cooldown dummy

# Default spawn chance (30%) and cooldown (150s = 2.5 min)
execute unless score .spawn_chance furia.config matches 1.. run scoreboard players set .spawn_chance furia.config 30
execute unless score .cooldown furia.config matches 1.. run scoreboard players set .cooldown furia.config 150

# Tier weights (total = 100)
scoreboard players set .weight_minor furia.config 60
scoreboard players set .weight_standard furia.config 30
scoreboard players set .weight_greater furia.config 10

# Create teams for colored names
team add ec.furia.minor "Minor Furia"
team add ec.furia.standard "Standard Furia"
team add ec.furia.greater "Greater Furia"

team modify ec.furia.minor color dark_gray
team modify ec.furia.standard color dark_aqua
team modify ec.furia.greater color dark_red

# Schedule main systems
schedule function evercraft:mobs/furia/check 1s
schedule function evercraft:mobs/furia/particles/init 10t
