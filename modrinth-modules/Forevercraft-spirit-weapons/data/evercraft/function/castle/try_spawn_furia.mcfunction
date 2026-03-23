# Infinite Castle — Try to convert one mob into a Furia
# 25% chance per wave (floor 5+)

# Roll 1-100, pass on 1-25
execute store result score #ic_furia_roll ec.var run random value 1..100
execute unless score #ic_furia_roll ec.var matches 1..25 run return 0

# Pick one random non-boss mob from this wave
execute as @e[tag=ic.mob,tag=!ic.boss,tag=!ic.furia,tag=!ic.patron,sort=random,limit=1] run function evercraft:castle/convert_furia
