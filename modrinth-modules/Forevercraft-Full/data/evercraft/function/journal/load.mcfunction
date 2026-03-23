# ============================================================
# Exploration Journal — Load
# Scoreboards, constants, bootstrap tick schedule
# ============================================================

# === SCOREBOARDS ===
scoreboard objectives add jn.view trigger "Journal"
scoreboard objectives add jn.biome_count dummy "Biomes Discovered"
scoreboard objectives add jn.struct_count dummy "Structures Discovered"
scoreboard objectives add jn.village_count dummy "Villages Discovered"
scoreboard objectives add jn.secret_count dummy "Secrets Discovered"
scoreboard objectives add jn.region_ow dummy "OW Surface Complete"
scoreboard objectives add jn.region_cave dummy "OW Caves Complete"
scoreboard objectives add jn.region_neth dummy "Nether Complete"
scoreboard objectives add jn.region_end dummy "End Complete"
scoreboard objectives add jn.temp dummy "Journal Temp"

# Enable trigger for all players
scoreboard players enable @a jn.view

# Bootstrap self-scheduling tick (5s interval)
schedule function evercraft:journal/tick 5s replace
