# Roll for Patron rarity based on weights
# Total weight: 50+30+12+5+2+1 = 100

# === DEBUG BOOST: Always mythical, no cooldown ===
execute if score #debug_boost ec.debug matches 1 run function evercraft:mobs/patrons/convert/mythical
execute if score #debug_boost ec.debug matches 1 run return 0

scoreboard players set #roll patron.config 0
execute store result score #roll patron.config run random value 1..100

# Moon + Patrons: Full moon (phase 0) boosts patron tier (+10 to roll, capped at 100)
execute if score #moon_phase ec.var matches 0 run scoreboard players add #roll patron.config 10
execute if score #roll patron.config matches 101.. run scoreboard players set #roll patron.config 100

# Mythical: 1% (roll 100)
execute if score #roll patron.config matches 100 run function evercraft:mobs/patrons/convert/mythical

# Exquisite: 2% (roll 98-99)
execute if score #roll patron.config matches 98..99 run function evercraft:mobs/patrons/convert/exquisite

# Ornate: 5% (roll 93-97)
execute if score #roll patron.config matches 93..97 run function evercraft:mobs/patrons/convert/ornate

# Rare: 12% (roll 81-92)
execute if score #roll patron.config matches 81..92 run function evercraft:mobs/patrons/convert/rare

# Uncommon: 30% (roll 51-80)
execute if score #roll patron.config matches 51..80 run function evercraft:mobs/patrons/convert/uncommon

# Common: 50% (roll 1-50)
execute if score #roll patron.config matches 1..50 run function evercraft:mobs/patrons/convert/common

# 5-minute cooldown before next patron can spawn (300 seconds)
scoreboard players set #global patron.cooldown 300
