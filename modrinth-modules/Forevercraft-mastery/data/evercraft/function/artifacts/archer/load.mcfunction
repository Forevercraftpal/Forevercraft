# Archer Bow Artifacts — Load Function
# 12 archer bows with overcharge abilities and shared disengage

# === SCOREBOARDS ===
scoreboard objectives add ec.ar_draw dummy "Archer Draw Ticks"
scoreboard objectives add ec.ar_stale dummy "Archer Stale Counter"
scoreboard objectives add ec.ar_bow_id dummy "Archer Bow ID"
scoreboard objectives add ec.ar_charged dummy "Archer Overcharged"
scoreboard objectives add ec.ar_cd dummy "Archer Cooldown"
scoreboard objectives add ec.ar_disengage dummy "Archer Disengage CD"
scoreboard objectives add ec.ar_hit_timer dummy "Archer Hit Timer"
scoreboard objectives add ec.ar_temp dummy "Archer Temp"

# Start the archer cooldown tick loop (1s self-schedule)
schedule function evercraft:artifacts/archer/tick 1s
