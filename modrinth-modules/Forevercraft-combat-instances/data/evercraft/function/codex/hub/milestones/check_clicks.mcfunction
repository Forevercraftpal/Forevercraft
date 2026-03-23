# Milestones Section — Click Detection (Section 8)
# Run as the player with menu open

# === OVERVIEW CLICKS (page 1) — Route to detail pages ===
# Each click: clear interaction, find player, face anchor, call enter_detail macro
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.MsOvClick0,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/milestones/enter_detail_click {page:9}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.MsOvClick1,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/milestones/enter_detail_click {page:10}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.MsOvClick2,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/milestones/enter_detail_click {page:11}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.MsOvClick3,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/milestones/enter_detail_click {page:12}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.MsOvClick4,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/milestones/enter_detail_click {page:13}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.MsOvClick5,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/milestones/enter_detail_click {page:14}

# Personal Milestones — opens ecodex personal claims section (section 17) inline
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.MsOvClick6,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/milestones/enter_personal

# Memories (renamed Scrapbook) — opens scrapbook inline
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.MsOvClick7,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/milestones/enter_memories

# === MILESTONE TITLE CLICK — CLAIM ALL (overview page 1) ===
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.JnMsTitleClick,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/journal/claim_title_click_all

# === MILESTONE DETAIL PAGES (9-14, realm milestones) ===

# Title click — per-category claim
execute if score @s adv.gui_page matches 9 as @e[type=interaction,tag=Adv.JnMsTitleClick,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/journal/claim_title_click_cat {cat:"origins"}
execute if score @s adv.gui_page matches 10 as @e[type=interaction,tag=Adv.JnMsTitleClick,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/journal/claim_title_click_cat {cat:"social"}
execute if score @s adv.gui_page matches 11 as @e[type=interaction,tag=Adv.JnMsTitleClick,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/journal/claim_title_click_cat {cat:"guild"}
execute if score @s adv.gui_page matches 12 as @e[type=interaction,tag=Adv.JnMsTitleClick,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/journal/claim_title_click_cat {cat:"adventure"}
execute if score @s adv.gui_page matches 13 as @e[type=interaction,tag=Adv.JnMsTitleClick,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/journal/claim_title_click_cat {cat:"combat"}
execute if score @s adv.gui_page matches 14 as @e[type=interaction,tag=Adv.JnMsTitleClick,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/journal/claim_title_click_cat {cat:"mastery"}

# Auto-refresh detail pages (every 60 ticks)
execute if score @s adv.gui_page matches 9..14 store result score #ms_refresh ec.temp run time query gametime
execute if score @s adv.gui_page matches 9..14 run scoreboard players operation #ms_refresh ec.temp %= #60 ec.const
execute if score @s adv.gui_page matches 9 if score #ms_refresh ec.temp matches 0 run function evercraft:codex/hub/journal/refresh_ms_origins
execute if score @s adv.gui_page matches 10 if score #ms_refresh ec.temp matches 0 run function evercraft:codex/hub/journal/refresh_ms_social
execute if score @s adv.gui_page matches 11 if score #ms_refresh ec.temp matches 0 run function evercraft:codex/hub/journal/refresh_ms_guild
execute if score @s adv.gui_page matches 12 if score #ms_refresh ec.temp matches 0 run function evercraft:codex/hub/journal/refresh_ms_adventure
execute if score @s adv.gui_page matches 13 if score #ms_refresh ec.temp matches 0 run function evercraft:codex/hub/journal/refresh_ms_combat
execute if score @s adv.gui_page matches 14 if score #ms_refresh ec.temp matches 0 run function evercraft:codex/hub/journal/refresh_ms_mastery

# Claim clicks (detail pages 9-14)
execute if score @s adv.gui_page matches 9 run function evercraft:milestones/check_claims_origins
execute if score @s adv.gui_page matches 10 run function evercraft:milestones/check_claims_social
execute if score @s adv.gui_page matches 11 run function evercraft:milestones/check_claims_guild
execute if score @s adv.gui_page matches 12 run function evercraft:milestones/check_claims_adventure
execute if score @s adv.gui_page matches 13 run function evercraft:milestones/check_claims_combat
execute if score @s adv.gui_page matches 14 run function evercraft:milestones/check_claims_mastery

# Back to milestones overview (from detail pages 9-14)
execute if score @s adv.gui_page matches 9..14 as @e[type=interaction,tag=Adv.JnMsBackClick,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/milestones/back_to_overview_click

# === PERSONAL MILESTONES (page 20) — ecodex personal claims ===
execute if score @s adv.gui_page matches 20 run function evercraft:ecodex/sections/personal_claims/check_clicks
execute if score @s adv.gui_page matches 20 as @e[type=interaction,tag=Adv.MsBackToOvClick,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/milestones/back_to_overview_click

# === MEMORIES (pages 15-16) — scrapbook content ===
execute if score @s adv.gui_page matches 15 as @e[type=interaction,tag=Adv.JnScMemClick,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/journal/enter_sc_detail_click
execute if score @s adv.gui_page matches 16 as @e[type=interaction,tag=Adv.JnScMemInfo,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/journal/memory_info_click
execute if score @s adv.gui_page matches 16 as @e[type=interaction,tag=Adv.JnScBackClick,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/journal/back_to_scrapbook_click
execute if score @s adv.gui_page matches 15 as @e[type=interaction,tag=Adv.MsBackToOvClick,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/milestones/back_to_overview_click
