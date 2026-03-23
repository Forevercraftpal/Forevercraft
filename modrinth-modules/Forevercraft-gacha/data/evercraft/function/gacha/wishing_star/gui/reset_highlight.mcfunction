# Wishing Star — Reset any highlighted artifact back to its normal text
# Removes ec.Confirming tag and re-runs the refresh for the current page
# Run as @s = player

# Bail if nothing is highlighted
execute unless entity @e[type=text_display,tag=ec.Confirming,tag=Adv.ArtItems,distance=..10,limit=1] run return 0

# Remove confirming tag
tag @e[type=text_display,tag=ec.Confirming,tag=Adv.ArtItems,distance=..10] remove ec.Confirming

# Re-run refresh for current tier/category to restore text
# === COMMON (tier 1) ===
execute if score @s adv.gui_art_tier matches 1 if score @s adv.gui_art_cat matches 1 run function evercraft:codex/hub/artifacts/refresh/common_weapons
execute if score @s adv.gui_art_tier matches 1 if score @s adv.gui_art_cat matches 2 run function evercraft:codex/hub/artifacts/refresh/common_armor
execute if score @s adv.gui_art_tier matches 1 if score @s adv.gui_art_cat matches 3 run function evercraft:codex/hub/artifacts/refresh/common_accessories
execute if score @s adv.gui_art_tier matches 1 if score @s adv.gui_art_cat matches 4 run function evercraft:codex/hub/artifacts/refresh/common_tools

# === UNCOMMON (tier 2) ===
execute if score @s adv.gui_art_tier matches 2 if score @s adv.gui_art_cat matches 1 run function evercraft:codex/hub/artifacts/refresh/uncommon_weapons
execute if score @s adv.gui_art_tier matches 2 if score @s adv.gui_art_cat matches 2 run function evercraft:codex/hub/artifacts/refresh/uncommon_armor
execute if score @s adv.gui_art_tier matches 2 if score @s adv.gui_art_cat matches 3 run function evercraft:codex/hub/artifacts/refresh/uncommon_accessories
execute if score @s adv.gui_art_tier matches 2 if score @s adv.gui_art_cat matches 4 run function evercraft:codex/hub/artifacts/refresh/uncommon_tools

# === RARE (tier 3) ===
execute if score @s adv.gui_art_tier matches 3 if score @s adv.gui_art_cat matches 1 run function evercraft:codex/hub/artifacts/refresh/rare_weapons
execute if score @s adv.gui_art_tier matches 3 if score @s adv.gui_art_cat matches 2 run function evercraft:codex/hub/artifacts/refresh/rare_armor
execute if score @s adv.gui_art_tier matches 3 if score @s adv.gui_art_cat matches 3 run function evercraft:codex/hub/artifacts/refresh/rare_accessories
execute if score @s adv.gui_art_tier matches 3 if score @s adv.gui_art_cat matches 4 run function evercraft:codex/hub/artifacts/refresh/rare_tools

# === ORNATE (tier 4) ===
execute if score @s adv.gui_art_tier matches 4 if score @s adv.gui_art_cat matches 1 run function evercraft:codex/hub/artifacts/refresh/ornate_weapons
execute if score @s adv.gui_art_tier matches 4 if score @s adv.gui_art_cat matches 2 if score @s adv.gui_page matches 3 run function evercraft:codex/hub/artifacts/refresh/ornate_armor_1
execute if score @s adv.gui_art_tier matches 4 if score @s adv.gui_art_cat matches 2 if score @s adv.gui_page matches 4 run function evercraft:codex/hub/artifacts/refresh/ornate_armor_2
execute if score @s adv.gui_art_tier matches 4 if score @s adv.gui_art_cat matches 2 if score @s adv.gui_page matches 5 run function evercraft:codex/hub/artifacts/refresh/ornate_armor_3
execute if score @s adv.gui_art_tier matches 4 if score @s adv.gui_art_cat matches 3 run function evercraft:codex/hub/artifacts/refresh/ornate_accessories
execute if score @s adv.gui_art_tier matches 4 if score @s adv.gui_art_cat matches 4 run function evercraft:codex/hub/artifacts/refresh/ornate_tools

# === EXQUISITE (tier 5) ===
execute if score @s adv.gui_art_tier matches 5 if score @s adv.gui_art_cat matches 1 if score @s adv.gui_page matches 3 run function evercraft:codex/hub/artifacts/refresh/exquisite_weapons_1
execute if score @s adv.gui_art_tier matches 5 if score @s adv.gui_art_cat matches 1 if score @s adv.gui_page matches 4 run function evercraft:codex/hub/artifacts/refresh/exquisite_weapons_2
execute if score @s adv.gui_art_tier matches 5 if score @s adv.gui_art_cat matches 2 run function evercraft:codex/hub/artifacts/refresh/exquisite_armor
execute if score @s adv.gui_art_tier matches 5 if score @s adv.gui_art_cat matches 3 run function evercraft:codex/hub/artifacts/refresh/exquisite_accessories
execute if score @s adv.gui_art_tier matches 5 if score @s adv.gui_art_cat matches 4 run function evercraft:codex/hub/artifacts/refresh/exquisite_tools

# === MYTHICAL (tier 6) ===
execute if score @s adv.gui_art_tier matches 6 if score @s adv.gui_art_cat matches 1 if score @s adv.gui_page matches 3 run function evercraft:codex/hub/artifacts/refresh/mythical_weapons_1
execute if score @s adv.gui_art_tier matches 6 if score @s adv.gui_art_cat matches 1 if score @s adv.gui_page matches 4 run function evercraft:codex/hub/artifacts/refresh/mythical_weapons_2
execute if score @s adv.gui_art_tier matches 6 if score @s adv.gui_art_cat matches 2 if score @s adv.gui_page matches 3 run function evercraft:codex/hub/artifacts/refresh/mythical_armor_1
execute if score @s adv.gui_art_tier matches 6 if score @s adv.gui_art_cat matches 2 if score @s adv.gui_page matches 4 run function evercraft:codex/hub/artifacts/refresh/mythical_armor_2
execute if score @s adv.gui_art_tier matches 6 if score @s adv.gui_art_cat matches 3 run function evercraft:codex/hub/artifacts/refresh/mythical_accessories
execute if score @s adv.gui_art_tier matches 6 if score @s adv.gui_art_cat matches 4 run function evercraft:codex/hub/artifacts/refresh/mythical_tools
