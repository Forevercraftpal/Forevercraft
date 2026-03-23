# Underground Biome Encounters — Initialization
# Called from init.mcfunction on datapack load

# Encounter timer (10s units, 0 = inactive)
scoreboard objectives add ube.timer dummy "Encounter Timer"

# Encounter type (0=none, 1=lush, 2=dripstone, 3=deep_dark)
scoreboard objectives add ube.type dummy "Encounter Type"

# Cooldown — gametime of last encounter end
scoreboard objectives add ube.cd dummy "Encounter Cooldown"

# Bootstrap 10s self-schedule
schedule function evercraft:encounters/tick 10s
