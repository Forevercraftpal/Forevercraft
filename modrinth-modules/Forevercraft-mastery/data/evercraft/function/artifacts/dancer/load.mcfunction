# Dancer Gauntlet System — Initialization
# Scoreboards for dual-wield gauntlet combat class

scoreboard objectives add ec.dn_tier dummy "Dancer Tier"
scoreboard objectives add ec.dn_dual dummy "Dancer Dual"
scoreboard objectives add ec.dn_flurry dummy "Dancer Flurry"
scoreboard objectives add ec.dn_cd dummy "Dancer CD"
scoreboard objectives add ec.dn_swing dummy "Dancer Swing"
scoreboard objectives add ec.dn_evasion_add dummy "Dancer Evasion Add"

# Schedule 1-second tick for cooldown management
schedule function evercraft:artifacts/dancer/tick_1s 1s
