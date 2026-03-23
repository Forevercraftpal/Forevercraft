# === PHOENIX CODEX — PROCESS USE ===
# Route to cycle (shift+use) or open (normal use)
# Run as: player, at player

# Guard: skip if player no longer has phoenix codex in either hand
execute unless items entity @s weapon.mainhand book[custom_data~{phoenix_codex:true}] unless items entity @s weapon.offhand book[custom_data~{phoenix_codex:true}] run return 0

# Sneak + use → cycle tab
execute if predicate evercraft:companions/is_sneaking run function evercraft:phoenix/cycle_tab
execute if predicate evercraft:companions/is_sneaking run return 0

# Normal use → open the selected codex
# Per-tab guards: suppress if that codex's menu is already open
# Tab 1 (FC Codex): guard on Adv.InMenu
execute if score @s ec.phoenix_tab matches 1 if entity @s[tag=Adv.InMenu] unless score @s adv.gui_cd matches 1.. run scoreboard players set @s adv.gui_cd 1
execute if score @s ec.phoenix_tab matches 1 if entity @s[tag=Adv.InMenu] run return 0
# Tab 2 (CF Codex): guard on CF.InCodex
execute if score @s ec.phoenix_tab matches 2 if entity @s[tag=CF.InCodex] unless score @s ec.cf_codex_cd matches 1.. run scoreboard players set @s ec.cf_codex_cd 1
execute if score @s ec.phoenix_tab matches 2 if entity @s[tag=CF.InCodex] run return 0
# Tab 3 (Companion Catalogue): guard on companion.inmenuv2
execute if score @s ec.phoenix_tab matches 3 if entity @s[tag=companion.inmenuv2] run return 0
# Tab 4 (Guidestone): guard on ec.gs_in_menu
execute if score @s ec.phoenix_tab matches 4 if entity @s[tag=ec.gs_in_menu] run return 0

# Open the selected tab
function evercraft:phoenix/open_tab
