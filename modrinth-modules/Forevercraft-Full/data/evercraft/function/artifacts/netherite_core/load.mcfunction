# Ancient Netherite Core - Load/Setup
# A portable beacon that works from your ender chest
# Hold in hand while sneaking to consume netherite blocks for upgrades
# Requires netherite blocks: 9 (L1) → 34 (L2) → 100 (L3) → 244 (L4)

# Scoreboards for tracking
scoreboard objectives add anc.level dummy
scoreboard objectives add anc.blocks dummy
scoreboard objectives add anc.primary dummy
scoreboard objectives add anc.secondary dummy
scoreboard objectives add evercraft.nc_blocks dummy
scoreboard objectives add ec.temp dummy

# Schedule effects check (applies effects when core is in ender chest)
schedule function evercraft:artifacts/netherite_core/effects 1s

# Schedule tick for upgrade detection (sneak + hold)
schedule function evercraft:artifacts/netherite_core/tick 5t
