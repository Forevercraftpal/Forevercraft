# Ecodex — Personal Claims Click Detection + Auto-Refresh (Section 17)
# Run as: player with menu open

# === AUTO-REFRESH (every 60 ticks) ===
execute store result score #ms_refresh ec.temp run time query gametime
scoreboard players operation #ms_refresh ec.temp %= #60 ec.const
execute if score #ms_refresh ec.temp matches 0 run function evercraft:ecodex/sections/personal_claims/refresh

# === TITLE CLICK — CLAIM ALL PERSONAL STAGES ===
execute as @e[type=interaction,tag=Ec.PmTitleClick,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/personal_claims/claim_title_click

# === GOLD HEADER (after auto-refresh counts) ===
execute if score @s ec.claim_prs matches 1.. run data modify entity @e[type=text_display,tag=Adv.MenuTitle,limit=1,sort=nearest] text set value {text:"\u2726 Personal Milestones \u2726",color:"gold",bold:true}

# === NAV CLICKS (all pages) ===
execute as @e[type=interaction,tag=Ec.PMNextCl,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/personal_claims/next_click
execute as @e[type=interaction,tag=Ec.PMPrevCl,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/personal_claims/prev_click

# === CLAIM CLICKS (page-routed) ===
execute if score @s ec.pm_page matches 0 run function evercraft:ecodex/sections/personal_claims/check_clicks_page_1
execute if score @s ec.pm_page matches 1 run function evercraft:ecodex/sections/personal_claims/check_clicks_page_2
execute if score @s ec.pm_page matches 2 run function evercraft:ecodex/sections/personal_claims/check_clicks_page_3
execute if score @s ec.pm_page matches 3 run function evercraft:ecodex/sections/personal_claims/check_clicks_page_4
execute if score @s ec.pm_page matches 4 run function evercraft:ecodex/sections/personal_claims/check_clicks_page_5
execute if score @s ec.pm_page matches 5 run function evercraft:ecodex/sections/personal_claims/check_clicks_page_6
execute if score @s ec.pm_page matches 6 run function evercraft:ecodex/sections/personal_claims/check_clicks_page_7
execute if score @s ec.pm_page matches 7 run function evercraft:ecodex/sections/personal_claims/check_clicks_page_8
execute if score @s ec.pm_page matches 8 run function evercraft:ecodex/sections/personal_claims/check_clicks_page_9
execute if score @s ec.pm_page matches 9 run function evercraft:ecodex/sections/personal_claims/check_clicks_page_10
execute if score @s ec.pm_page matches 10 run function evercraft:ecodex/sections/personal_claims/check_clicks_page_11
execute if score @s ec.pm_page matches 11 run function evercraft:ecodex/sections/personal_claims/check_clicks_page_12
execute if score @s ec.pm_page matches 12 run function evercraft:ecodex/sections/personal_claims/check_clicks_page_13
