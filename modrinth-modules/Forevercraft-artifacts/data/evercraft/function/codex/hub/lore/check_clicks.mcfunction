# Lore Section — Click Detection (Section 6)
# Run as the player with menu open

# === DIMENSION PICKER CLICKS (page 1) ===
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.LoreDimClick0,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/lore/dim_click {dim:0}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.LoreDimClick1,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/lore/dim_click {dim:1}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.LoreDimClick2,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/lore/dim_click {dim:2}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.LoreDimClick3,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/lore/dim_click {dim:3}

# === SUB-CATEGORY CLICKS (page 2) ===
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.LoreSubClick0,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/lore/subcat_click {subcat:1}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.LoreSubClick1,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/lore/subcat_click {subcat:2}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.LoreSubClick2,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/lore/subcat_click {subcat:3}

# === BACK TO DIMENSIONS (page 2) ===
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.LoreBackDimClick,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/lore/back_dim_click

# === SET LIST NAV & CLICKS (page 3) ===
execute if score @s adv.gui_page matches 3 as @e[type=interaction,tag=Adv.LoreBackSubClick,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/lore/back_sub_click
execute if score @s adv.gui_page matches 3 as @e[type=interaction,tag=Adv.LoreNavLeft,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/lore/nav_left_click
execute if score @s adv.gui_page matches 3 as @e[type=interaction,tag=Adv.LoreNavRight,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/lore/nav_right_click
execute if score @s adv.gui_page matches 3 as @e[type=interaction,tag=Adv.LoreSetClick0,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/lore/set_click {slot:0}
execute if score @s adv.gui_page matches 3 as @e[type=interaction,tag=Adv.LoreSetClick1,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/lore/set_click {slot:1}
execute if score @s adv.gui_page matches 3 as @e[type=interaction,tag=Adv.LoreSetClick2,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/lore/set_click {slot:2}
execute if score @s adv.gui_page matches 3 as @e[type=interaction,tag=Adv.LoreSetClick3,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/lore/set_click {slot:3}
execute if score @s adv.gui_page matches 3 as @e[type=interaction,tag=Adv.LoreSetClick4,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/lore/set_click {slot:4}

# === SET DETAIL BACK (page 4) ===
execute if score @s adv.gui_page matches 4 as @e[type=interaction,tag=Adv.LoreBackListClick,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/lore/back_list_click

# === EXCHANGE BUTTON (page 1) ===
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.LoreExchangeClick,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/lore/exchange/click_open

# === CLAIM REWARDS BUTTON (page 1, merged from ecodex lore_claims) ===
# Navigates to section 15 (lore claims) which has full 9-page paginated claim interface
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.LoreClaimClick,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/lore/claim_click

# === EXCHANGE GUI CLICKS (page 5) ===
execute if score @s adv.gui_page matches 5 as @e[type=interaction,tag=Adv.LoreExDepositBtn,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/lore/exchange/click_deposit
execute if score @s adv.gui_page matches 5 as @e[type=interaction,tag=Adv.LoreExExchangeBtn,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/lore/exchange/click_exchange
execute if score @s adv.gui_page matches 5 as @e[type=interaction,tag=Adv.LoreExBackBtn,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/lore/exchange/click_back
execute if score @s adv.gui_page matches 5 as @e[type=interaction,tag=Adv.LoreExHelpBtn,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/lore/exchange/click_info
