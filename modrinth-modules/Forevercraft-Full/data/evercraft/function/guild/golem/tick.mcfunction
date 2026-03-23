# Guild — Snow Golem Damage Tick (per-tick)
# Tags snowballs thrown by guild golems, then checks for hits

# Tag snowballs near guild golems (within 3 blocks of golem = just thrown)
# Exclude snowballs already tagged by housing system
execute as @e[type=snow_golem,tag=ec.gs_golem] at @s run tag @e[type=snowball,distance=..3,tag=!gs.snowball,tag=!hs.snowball] add gs.snowball

# Check each tagged snowball for nearby targets
execute as @e[type=snowball,tag=gs.snowball] at @s run function evercraft:guild/golem/check_hit
