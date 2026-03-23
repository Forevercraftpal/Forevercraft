# Ecodex — Lore Claims Click Detection + Auto-Refresh (Section 15)
# Run as: player with menu open

# === AUTO-REFRESH (every 60 ticks) ===
execute store result score #ms_refresh ec.temp run time query gametime
scoreboard players operation #ms_refresh ec.temp %= #60 ec.const
execute if score #ms_refresh ec.temp matches 0 run function evercraft:ecodex/sections/lore_claims/refresh

# === NAV CLICKS (all pages) ===
execute as @e[type=interaction,tag=Ec.LrPgNextCl,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/lore_claims/next_click
execute as @e[type=interaction,tag=Ec.LrPgPrevCl,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/lore_claims/prev_click

# === CLAIM CLICKS (page-routed) ===
execute if score @s ec.lr_page matches 0 run function evercraft:ecodex/sections/lore_claims/check_clicks_page_1
execute if score @s ec.lr_page matches 1 run function evercraft:ecodex/sections/lore_claims/check_clicks_page_2
execute if score @s ec.lr_page matches 2 run function evercraft:ecodex/sections/lore_claims/check_clicks_page_3
execute if score @s ec.lr_page matches 3 run function evercraft:ecodex/sections/lore_claims/check_clicks_page_4
execute if score @s ec.lr_page matches 4 run function evercraft:ecodex/sections/lore_claims/check_clicks_page_5
execute if score @s ec.lr_page matches 5 run function evercraft:ecodex/sections/lore_claims/check_clicks_page_6
execute if score @s ec.lr_page matches 6 run function evercraft:ecodex/sections/lore_claims/check_clicks_page_7
execute if score @s ec.lr_page matches 7 run function evercraft:ecodex/sections/lore_claims/check_clicks_page_8
execute if score @s ec.lr_page matches 8 run function evercraft:ecodex/sections/lore_claims/check_clicks_page_9
