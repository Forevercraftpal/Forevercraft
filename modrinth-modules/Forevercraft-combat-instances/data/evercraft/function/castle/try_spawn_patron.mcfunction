# Infinite Castle — Try to convert one mob into a Patron
# 15% chance per wave (floor 15+)

# Roll 1-100, pass on 1-15
execute store result score #ic_patron_roll ec.var run random value 1..100
execute unless score #ic_patron_roll ec.var matches 1..15 run return 0

# Pick one random non-boss, non-furia mob from this wave
execute as @e[tag=ic.mob,tag=!ic.boss,tag=!ic.furia,tag=!ic.patron,sort=random,limit=1] run function evercraft:castle/convert_patron
