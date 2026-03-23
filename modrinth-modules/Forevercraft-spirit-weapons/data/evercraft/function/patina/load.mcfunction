# Artifact Patina System — Load
# Artifacts evolve through stages: Fresh → Worn → Seasoned → Storied → Legendary
# Thresholds (cumulative hours equipped): 2h, 8h, 24h, 72h
# Data stored in item custom_data: patina (stage 0-4), patina_ticks (total seconds)
# Delta ticks tracked in scoreboards to avoid item replace every 60s (equip sound fix)

# Per-player accumulated delta scoreboards (one per equipment slot)
scoreboard objectives add ec.pd0 dummy
scoreboard objectives add ec.pd1 dummy
scoreboard objectives add ec.pd2 dummy
scoreboard objectives add ec.pd3 dummy
scoreboard objectives add ec.pd4 dummy

# Schedule 60-second tick (self-scheduling, >5s interval = no watchdog needed)
schedule function evercraft:patina/tick 60s
