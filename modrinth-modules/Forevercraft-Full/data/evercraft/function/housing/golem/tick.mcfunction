# Housing — Snow Golem Damage Tick (per-tick)
# Tags snowballs thrown by home golems, then checks for hits

# Tag snowballs near home golems (within 3 blocks of golem = just thrown)
execute as @e[type=snow_golem,tag=hs.golem] at @s run tag @e[type=snowball,distance=..3,tag=!hs.snowball] add hs.snowball

# Check each tagged snowball for nearby targets
execute as @e[type=snowball,tag=hs.snowball] at @s run function evercraft:housing/golem/check_hit
