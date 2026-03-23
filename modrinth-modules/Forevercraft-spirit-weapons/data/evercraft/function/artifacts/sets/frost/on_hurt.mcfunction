# Frost 2pc - Freeze attackers when hurt
# Run when player with frost_2pc takes damage

# Apply slowness and freeze particles to nearby hostiles (attacker approximation)
effect give @e[type=#evercraft:hostile,distance=..3,limit=1,sort=nearest] slowness 3 2
effect give @e[type=#evercraft:hostile,distance=..3,limit=1,sort=nearest] mining_fatigue 3 1
particle snowflake ~ ~1 ~ 0.5 0.5 0.5 0.02 10 force
