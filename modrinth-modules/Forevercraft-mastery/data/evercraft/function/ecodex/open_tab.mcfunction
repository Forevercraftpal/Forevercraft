# === ETERNAL CODEX — OPEN TAB ===
# Normal use: opens the selected codex GUI directly
# Tab 1: Forevercraft Codex | Tab 2: Craftforever Codex | Tab 3: Companion Catalogue
# Run as: player, at player

# Tab 1 — Open Forevercraft Codex hub
execute if score @s ec.ecodex_tab matches 1 run function evercraft:codex/hub/open

# Tab 2 — Open Craftforever Codex hub
execute if score @s ec.ecodex_tab matches 2 run function evercraft:craftforever/codex/hub/open

# Tab 3 — Open Companion Catalogue
# Note: companion open sets companion.restore_menu for item restore — remove it since
# the eternal codex handles its own restore via ecodex/do_restore
execute if score @s ec.ecodex_tab matches 3 run function evercraft:companions/handler/menu_v2/open
execute if score @s ec.ecodex_tab matches 3 run tag @s remove companion.restore_menu
