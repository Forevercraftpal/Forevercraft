# Striker Mace System — Load Function
# Impact charge mechanic with tier-scaled passives and Ground Slam active

# === SCOREBOARDS ===
scoreboard objectives add ec.sk_impact dummy "Striker Impact"
scoreboard objectives add ec.sk_tier dummy "Striker Tier"
scoreboard objectives add ec.sk_cd dummy "Striker GS Cooldown"
scoreboard objectives add ec.sk_combat dummy "Striker Combat Timer"
scoreboard objectives add ec.sk_fort_cd dummy "Sentinel Fortress CD"
scoreboard objectives add ec.sk_fall dummy "Striker Fall Distance"

# Start the 1-second tick loop
schedule function evercraft:artifacts/striker/tick_1s 1s
