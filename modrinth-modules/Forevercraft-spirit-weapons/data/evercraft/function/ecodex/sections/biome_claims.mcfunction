# === ETERNAL CODEX — BIOME MASTERY CLAIMS (Section 16) ===
# 25 biomes, 5 mastery stages each, across 2 pages
# Thresholds: 30min / 2hr / 6hr / 15hr / 30hr in each biome
# Run as: player, at player

# Reset to page 1 on section entry
scoreboard players set @s ec.bm_page 0

# Spawn the first page
function evercraft:ecodex/sections/biome_claims/spawn_page
