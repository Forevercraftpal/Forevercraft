# Roll for Furia tier based on weights
# Total weight: 60+30+10 = 100

# === DEBUG BOOST: Always greater, no cooldown ===
execute if score #debug_boost ec.debug matches 1 run function evercraft:mobs/furia/convert/greater
execute if score #debug_boost ec.debug matches 1 run return 0

scoreboard players set #roll furia.config 0
execute store result score #roll furia.config run random value 1..100

# Greater: 10% (roll 91-100)
execute if score #roll furia.config matches 91..100 run function evercraft:mobs/furia/convert/greater

# Standard: 30% (roll 61-90)
execute if score #roll furia.config matches 61..90 run function evercraft:mobs/furia/convert/standard

# Minor: 60% (roll 1-60)
execute if score #roll furia.config matches 1..60 run function evercraft:mobs/furia/convert/minor

# 2.5-minute cooldown before next furia can spawn (150 seconds)
scoreboard players set #global furia.cooldown 150
