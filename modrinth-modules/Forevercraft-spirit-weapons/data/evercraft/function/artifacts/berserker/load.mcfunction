# Berserker Dual-Axe System — Load Function
# Activated when player holds axe artifacts in BOTH hands

# === SCOREBOARDS ===
# Higher tier of the two held axes (1-6: common→mythical)
scoreboard objectives add ec.bk_tier dummy "Berserker Tier"

# Rage timer in ticks (200 = 10 seconds), 0 = inactive
scoreboard objectives add ec.bk_rage dummy "Berserker Rage"

# Cooldown in seconds (90 = 1.5 minutes), 0 = ready
scoreboard objectives add ec.bk_cd dummy "Berserker CD"

# Auto-swing countdown in ticks (during rage only)
scoreboard objectives add ec.bk_swing dummy "Berserker Swing"

# Temp: health tracking for low-HP haste
scoreboard objectives add ec.bk_hp dummy "Berserker HP"
scoreboard objectives add ec.bk_maxhp dummy "Berserker MaxHP"

# Start the 1-second cooldown tick loop
schedule function evercraft:artifacts/berserker/tick_1s 1s
