# Ecodex — Refresh Biome Claims (Page-Routed)
# Run as: player, at player
execute if score @s ec.bm_page matches 0 run function evercraft:ecodex/sections/biome_claims/refresh_page_1
execute if score @s ec.bm_page matches 1 run function evercraft:ecodex/sections/biome_claims/refresh_page_2
