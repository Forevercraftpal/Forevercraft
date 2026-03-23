# Patron Elite Mob System — Load
# Merged system: replaces Captains + Mob Manager Rarity Mobs
# 6-tier rarity: Common, Uncommon, Rare, Ornate, Exquisite, Mythical

# Configuration scoreboards
scoreboard objectives add patron.config dummy
scoreboard objectives add patron.cooldown dummy

# Default spawn chance (7.5%) and cooldown (300s = 5 min)
execute unless score .spawn_chance patron.config matches 1.. run scoreboard players set .spawn_chance patron.config 8
execute unless score .cooldown patron.config matches 1.. run scoreboard players set .cooldown patron.config 300

# Rarity weights (total = 100)
scoreboard players set .weight_common patron.config 50
scoreboard players set .weight_uncommon patron.config 30
scoreboard players set .weight_rare patron.config 12
scoreboard players set .weight_ornate patron.config 5
scoreboard players set .weight_exquisite patron.config 2
scoreboard players set .weight_mythical patron.config 1

# Create teams for colored glowing/names
team add ec.patron.common "Common Patron"
team add ec.patron.uncommon "Uncommon Patron"
team add ec.patron.rare "Rare Patron"
team add ec.patron.ornate "Ornate Patron"
team add ec.patron.exquisite "Exquisite Patron"
team add ec.patron.mythical "Mythical Patron"

team modify ec.patron.common color gray
team modify ec.patron.uncommon color blue
team modify ec.patron.rare color aqua
team modify ec.patron.ornate color dark_purple
team modify ec.patron.exquisite color light_purple
team modify ec.patron.mythical color gold

# Achievement tracking
scoreboard objectives add ach.patron_kills dummy

# Schedule main systems
schedule function evercraft:mobs/patrons/check 1s
schedule function evercraft:mobs/patrons/particles/init 10t
schedule function evercraft:mobs/despawn_elites 5s
