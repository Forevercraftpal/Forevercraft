# CF Milestones — Check Clicks
# Page 1 (overview): detect category clicks
# Pages 9-14: realm milestone detail pages (reuse FC functions)
# Page 20: personal milestones
# Run as player

# === OVERVIEW CLICKS (page 1) ===
execute if score @s ec.cf_codex_page matches 1 as @e[type=interaction,tag=CF.MsOvClick0,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/cf_milestones/click_origins
execute if score @s ec.cf_codex_page matches 1 as @e[type=interaction,tag=CF.MsOvClick1,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/cf_milestones/click_social
execute if score @s ec.cf_codex_page matches 1 as @e[type=interaction,tag=CF.MsOvClick2,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/cf_milestones/click_guild
execute if score @s ec.cf_codex_page matches 1 as @e[type=interaction,tag=CF.MsOvClick3,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/cf_milestones/click_adventure
execute if score @s ec.cf_codex_page matches 1 as @e[type=interaction,tag=CF.MsOvClick4,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/cf_milestones/click_combat
execute if score @s ec.cf_codex_page matches 1 as @e[type=interaction,tag=CF.MsOvClick5,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/cf_milestones/click_mastery
execute if score @s ec.cf_codex_page matches 1 as @e[type=interaction,tag=CF.MsOvClick6,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/cf_milestones/click_personal
execute if score @s ec.cf_codex_page matches 1 as @e[type=interaction,tag=CF.MsOvClick7,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/cf_milestones/click_memories

# === DETAIL PAGES (9-14): Realm milestone claim clicks ===
# Set #gui_owner for FC claim function compatibility
scoreboard players operation #gui_owner ec.temp = @s ec.cf_gui_session

# Claim clicks (reuse FC claim functions — they check Adv.JnMsClaim* entities)
execute if score @s ec.cf_codex_page matches 9 run function evercraft:milestones/check_claims_origins
execute if score @s ec.cf_codex_page matches 10 run function evercraft:milestones/check_claims_social
execute if score @s ec.cf_codex_page matches 11 run function evercraft:milestones/check_claims_guild
execute if score @s ec.cf_codex_page matches 12 run function evercraft:milestones/check_claims_adventure
execute if score @s ec.cf_codex_page matches 13 run function evercraft:milestones/check_claims_combat
execute if score @s ec.cf_codex_page matches 14 run function evercraft:milestones/check_claims_mastery

# Auto-refresh detail pages every 60 ticks
execute if score @s ec.cf_codex_page matches 9..14 store result score #ms_refresh ec.temp run time query gametime
execute if score @s ec.cf_codex_page matches 9..14 run scoreboard players operation #ms_refresh ec.temp %= #60 ec.const
execute if score @s ec.cf_codex_page matches 9 if score #ms_refresh ec.temp matches 0 run function evercraft:codex/hub/journal/refresh_ms_origins
execute if score @s ec.cf_codex_page matches 10 if score #ms_refresh ec.temp matches 0 run function evercraft:codex/hub/journal/refresh_ms_social
execute if score @s ec.cf_codex_page matches 11 if score #ms_refresh ec.temp matches 0 run function evercraft:codex/hub/journal/refresh_ms_guild
execute if score @s ec.cf_codex_page matches 12 if score #ms_refresh ec.temp matches 0 run function evercraft:codex/hub/journal/refresh_ms_adventure
execute if score @s ec.cf_codex_page matches 13 if score #ms_refresh ec.temp matches 0 run function evercraft:codex/hub/journal/refresh_ms_combat
execute if score @s ec.cf_codex_page matches 14 if score #ms_refresh ec.temp matches 0 run function evercraft:codex/hub/journal/refresh_ms_mastery

# === PERSONAL MILESTONES (page 20) ===
execute if score @s ec.cf_codex_page matches 20 run function evercraft:ecodex/sections/personal_claims/check_clicks
