# Night Terrors — Roll spawn chance based on Dream Rate
# Run as eligible player at player

# Read dream rate (luck attribute x10)
execute store result score @s ec.temp run attribute @s luck get 10

# Must be 300+ (DR 30.0+)
execute unless score @s ec.temp matches 300.. run return 0

# Night Terrors + Inscription: Nearby inscription stones ward off Night Terrors
execute at @s if entity @e[type=marker,tag=ec.inscr_marker,distance=..24,limit=1] run return 0

# Roll 1-100
execute store result score #nt_roll ec.var run random value 1..100

# DR 30-35 (300-349): 15% chance
execute if score @s ec.temp matches 300..349 unless score #nt_roll ec.var matches 1..15 run return 0

# DR 36-40 (350-399): 25% chance
execute if score @s ec.temp matches 350..399 unless score #nt_roll ec.var matches 1..25 run return 0

# DR 41-45 (400-449): 35% chance
execute if score @s ec.temp matches 400..449 unless score #nt_roll ec.var matches 1..35 run return 0

# DR 46-50 (450+): 50% chance
execute if score @s ec.temp matches 450.. unless score #nt_roll ec.var matches 1..50 run return 0

# Spawn chance passed — start warning sequence
function evercraft:night_terrors/warning
