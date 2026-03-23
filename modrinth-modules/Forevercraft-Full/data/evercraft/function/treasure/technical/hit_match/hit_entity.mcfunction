# Small Ride
execute at @s if entity @a[scores={ec.small_hit=0},distance=..6,limit=1] run return run function evercraft:treasure/mechanics/small/ride_entity
# Piglin Jealousy
execute at @s if entity @a[scores={ec.piglin_jealousy=0},limit=1] run return run function evercraft:treasure/runes/gilded/steal