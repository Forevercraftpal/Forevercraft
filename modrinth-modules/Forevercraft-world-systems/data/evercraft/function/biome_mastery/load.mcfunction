# Biome Mastery System — Init
# Per-biome time tracking scoreboards (seconds spent)
scoreboard objectives add ec.bm0 dummy "BM Plains"
scoreboard objectives add ec.bm1 dummy "BM Forest"
scoreboard objectives add ec.bm2 dummy "BM Flower Forest"
scoreboard objectives add ec.bm3 dummy "BM Dark Forest"
scoreboard objectives add ec.bm4 dummy "BM Taiga"
scoreboard objectives add ec.bm5 dummy "BM Mountain"
scoreboard objectives add ec.bm6 dummy "BM Jungle"
scoreboard objectives add ec.bm7 dummy "BM Desert"
scoreboard objectives add ec.bm8 dummy "BM Savanna"
scoreboard objectives add ec.bm9 dummy "BM Ocean"
scoreboard objectives add ec.bm10 dummy "BM River"
scoreboard objectives add ec.bm11 dummy "BM Swamp"
scoreboard objectives add ec.bm12 dummy "BM Mushroom"
scoreboard objectives add ec.bm13 dummy "BM Ice"
scoreboard objectives add ec.bm14 dummy "BM Badlands"
scoreboard objectives add ec.bm15 dummy "BM Lush Caves"
scoreboard objectives add ec.bm16 dummy "BM Dripstone"
scoreboard objectives add ec.bm17 dummy "BM Deep Dark"
scoreboard objectives add ec.bm18 dummy "BM Nether Wastes"
scoreboard objectives add ec.bm19 dummy "BM Crimson Forest"
scoreboard objectives add ec.bm20 dummy "BM Warped Forest"
scoreboard objectives add ec.bm21 dummy "BM Basalt Deltas"
scoreboard objectives add ec.bm22 dummy "BM Soul Valley"
scoreboard objectives add ec.bm23 dummy "BM The End"
scoreboard objectives add ec.bm24 dummy "BM Windswept"

# Working scoreboards
scoreboard objectives add ec.bm_time dummy "Biome Time (current)"
scoreboard objectives add ec.bm_level dummy "Biome Mastery Level"
scoreboard objectives add ec.bm_prev dummy "Previous Biome ID"
scoreboard objectives add ec.biome_mastery trigger "Biome Mastery"
scoreboard players enable @a ec.biome_mastery

# Constants
scoreboard players set #3600 ec.const 3600

# Initialize previous biome to -1 for all players (forces initial detection)
execute as @a run scoreboard players set @s ec.bm_prev -1

# Start self-scheduling tick
schedule function evercraft:biome_mastery/tick 1s
