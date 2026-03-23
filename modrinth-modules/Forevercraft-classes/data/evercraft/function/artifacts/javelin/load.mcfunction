# Javelin Class — Load Function
# 9 trident artifacts with Momentum system and Hoplite sub-class

# === SCOREBOARDS ===
scoreboard objectives add ec.jv_thrown dummy "Javelin Thrown Momentum"
scoreboard objectives add ec.jv_melee dummy "Javelin Melee Momentum"
scoreboard objectives add ec.jv_tier dummy "Javelin Tier"
scoreboard objectives add ec.jv_id dummy "Javelin ID"
scoreboard objectives add ec.jv_cd dummy "Javelin Cooldown"
scoreboard objectives add ec.jv_hoplite dummy "Javelin Hoplite"
scoreboard objectives add ec.jv_hoplite_prev dummy "Javelin Hoplite Prev"
scoreboard objectives add ec.jv_aegis dummy "Javelin Aegis Hits"
scoreboard objectives add ec.jv_aegis_w dummy "Javelin Aegis Window"
scoreboard objectives add ec.jv_aegis_cd dummy "Javelin Aegis Cooldown"

# Start the cooldown tick loop (1s self-schedule)
schedule function evercraft:artifacts/javelin/cooldown_tick 1s
