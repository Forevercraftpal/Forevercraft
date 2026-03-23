# Biome Claims — Spawn Current Page
# Routes to page_1..page_N based on ec.bm_page score
# Note: do NOT use "at @s" — it resets rotation, discarding facing-anchor context
execute if score @s ec.bm_page matches 0 run function evercraft:ecodex/sections/biome_claims/page_1
execute if score @s ec.bm_page matches 1 run function evercraft:ecodex/sections/biome_claims/page_2
