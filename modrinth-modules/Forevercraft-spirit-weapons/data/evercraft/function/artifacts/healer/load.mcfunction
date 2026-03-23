# Healer Artifacts — Load Function
# 12 healer artifacts with individual cooldowns and shared weapon lockout

# === COOLDOWN SCOREBOARDS (seconds, decremented every 1s) ===
scoreboard objectives add ec.hl_bandage dummy "Bandages CD"
scoreboard objectives add ec.hl_poultice dummy "Poultice CD"
scoreboard objectives add ec.hl_salts dummy "Salts CD"
scoreboard objectives add ec.hl_balm dummy "Balm CD"
scoreboard objectives add ec.hl_chalice dummy "Chalice CD"
scoreboard objectives add ec.hl_incense dummy "Incense CD"
scoreboard objectives add ec.hl_plume dummy "Plume CD"
scoreboard objectives add ec.hl_censer dummy "Censer CD"
scoreboard objectives add ec.hl_lotus dummy "Lotus CD"
scoreboard objectives add ec.hl_tome dummy "Tome CD"
scoreboard objectives add ec.hl_ambrosia dummy "Ambrosia CD"
scoreboard objectives add ec.hl_tears dummy "Tears CD"

# Master lockout flag (1 = any healer CD active, 0 = free)
scoreboard objectives add ec.hl_locked dummy "Healer Locked"

# Temp score for triage healing (Lifewarden's Tome)
scoreboard objectives add ec.hl_temp dummy "Healer Temp"

# Delayed item restore scores (consume_item fires before item removal)
scoreboard objectives add ec.hl_restore_id dummy "Healer Restore ID"
scoreboard objectives add ec.hl_restore_hand dummy "Healer Restore Hand"

# Revive channel scores (tomb revive system)
scoreboard objectives add ec.hl_revive dummy "Healer Revive CD"
scoreboard objectives add ec.hl_revive_id dummy "Healer Revive Grave"

# Start the healer tick loop (1s self-schedule)
schedule function evercraft:artifacts/healer/tick 1s
