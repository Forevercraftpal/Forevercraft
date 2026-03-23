# Rogue Artifacts — Load Function
# 12 auto-swing daggers with tier-based speed scaling and dual wield support

# === SCOREBOARDS ===
# Per-player swing cooldown (ticks, decremented per tick while holding dagger)
scoreboard objectives add ec.rg_swing dummy "Rogue Swing CD"

# Cached tier (1-6) of currently held dagger
scoreboard objectives add ec.rg_tier dummy "Rogue Tier"

# Dual wield flag (1 = offhand also has rogue dagger, 0 = single)
scoreboard objectives add ec.rg_dual dummy "Rogue Dual"

# Duality toggle for The Beginning and The End (alternates 0/1 each swing)
scoreboard objectives add ec.rg_duality dummy "Rogue Duality"
