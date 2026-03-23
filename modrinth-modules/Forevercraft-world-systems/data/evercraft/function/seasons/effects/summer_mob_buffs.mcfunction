# Summer Mob Aggression — called every 5s during summer
# Gives speed and strength to nearby hostile mobs (low amplifier)

# Apply buffs to hostile mobs near any player (10s duration, refreshed every 5s)
# hide_particles:true so it's not visually noisy
execute as @a at @s run effect give @e[type=#evercraft:hostile_mobs,distance=..64] speed 10 0 true
execute as @a at @s run effect give @e[type=#evercraft:hostile_mobs,distance=..64] strength 10 0 true
