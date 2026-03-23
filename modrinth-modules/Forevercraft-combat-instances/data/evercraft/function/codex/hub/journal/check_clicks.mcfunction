# Journal Section — Click Detection (Section 5)
# Run as the player with menu open

# === OVERVIEW CLICKS (page 1) ===
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.JnOvClick0,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/journal/enter_subpage_click {page:2}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.JnOvClick1,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/journal/enter_subpage_click {page:3}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.JnOvClick2,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/journal/enter_subpage_click {page:4}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.JnOvClick3,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/journal/enter_subpage_click {page:5}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.JnOvClick4,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/journal/enter_subpage_click {page:6}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.JnOvClick5,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/journal/enter_subpage_click {page:7}

# === LORE DISCOVERY (top center button, Click7) — navigates to Lore section ===
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.JnOvClick7,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/enter_section {section:6}

# === BIOME CLAIM CLICKS (page 2 — biome sub-page, click biome to claim rewards) ===
execute if score @s adv.gui_page matches 2 run function evercraft:codex/hub/journal/check_biome_claims

# === BACK TO OVERVIEW (sub-pages 2-7) ===
execute if score @s adv.gui_page matches 2..7 as @e[type=interaction,tag=Adv.JnBackOvClick,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/journal/back_to_overview_click
