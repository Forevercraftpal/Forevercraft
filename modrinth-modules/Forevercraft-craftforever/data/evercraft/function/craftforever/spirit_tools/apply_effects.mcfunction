# === SPIRIT TOOLS — APPLY EFFECTS ===
# Called every 40 ticks. Applies base effects per tool type.
# Duration 5s (100 ticks) > 40-tick refresh = seamless overlap.

# Earthsong: Haste III + Night Vision below Y=50
execute if score @s ec.st_tool matches 1 run effect give @s haste 5 2 false
execute if score @s ec.st_tool matches 1 if predicate evercraft:below_y50 run effect give @s night_vision 15 0 false

# Bloomweaver: (passives handled in bloomweaver/passive — growth aura is per-5s)

# Tidecaller: Luck V + Water Breathing + Conduit Power near water
execute if score @s ec.st_tool matches 3 run effect give @s luck 5 4 false
execute if score @s ec.st_tool matches 3 run effect give @s water_breathing 15 0 false
execute if score @s ec.st_tool matches 3 if predicate evercraft:in_water run effect give @s conduit_power 15 0 false

# Dustwalker: Speed III + Haste II + Jump Boost I (no fall damage via slow_falling)
execute if score @s ec.st_tool matches 4 run effect give @s speed 5 2 false
execute if score @s ec.st_tool matches 4 run effect give @s haste 5 1 false
execute if score @s ec.st_tool matches 4 run effect give @s slow_falling 5 0 false

# Heartwood: Haste III
execute if score @s ec.st_tool matches 5 run effect give @s haste 5 2 false

# Silkgrasp: (no base effects — passives are on-action)
