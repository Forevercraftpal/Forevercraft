# Dreaming Realm — Per-Player Tick
# Run as @a[tag=dr.in_realm] at @s
# OPT: Batches 5 separate @a[tag=dr.in_realm] scans into 1

# Decrement timer
scoreboard players remove @s ec.dream_timer 1

# Update bossbar
execute store result bossbar evercraft:dream_timer value run scoreboard players get @s ec.dream_timer

# Fall catch — player below Y=299 means they fell off a platform
execute if entity @s[y=0,dy=298] run tp @s @e[type=marker,tag=dr.center,limit=1]

# Timer warnings (exact tick match for one-time trigger)
execute if score @s ec.dream_timer matches 1200 run function evercraft:dreaming_realm/timer/warning_1min
execute if score @s ec.dream_timer matches 600 run function evercraft:dreaming_realm/timer/warning_30s

# Timer expired
execute if score @s ec.dream_timer matches ..0 run function evercraft:dreaming_realm/timer/expire

# Lore proximity check (SW chamber)
function evercraft:dreaming_realm/lore/collect
