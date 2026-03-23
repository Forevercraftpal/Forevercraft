# Ecodex — Biome Claims Click Detection + Auto-Refresh (Section 16)
# Run as: player with menu open

# === AUTO-REFRESH (every 60 ticks) ===
execute store result score #ms_refresh ec.temp run time query gametime
scoreboard players operation #ms_refresh ec.temp %= #60 ec.const
execute if score #ms_refresh ec.temp matches 0 run function evercraft:ecodex/sections/biome_claims/refresh

# === NAV CLICKS (all pages) ===
execute as @e[type=interaction,tag=Ec.BmPgNextCl,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/biome_claims/next_click
execute as @e[type=interaction,tag=Ec.BmPgPrevCl,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/biome_claims/prev_click

# === CLAIM CLICKS (page-routed) ===
execute if score @s ec.bm_page matches 0 run function evercraft:ecodex/sections/biome_claims/check_clicks_page_1
execute if score @s ec.bm_page matches 1 run function evercraft:ecodex/sections/biome_claims/check_clicks_page_2
