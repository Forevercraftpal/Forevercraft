# Artifact Collection — Dispatch Item List
# Routes to correct spawn file based on tier + category + page
# Page 3 = item page 1, page 4 = item page 2, etc.
# Run as the player

# === COMMON (tier 1) ===
execute if score @s adv.gui_art_tier matches 1 if score @s adv.gui_art_cat matches 1 run function evercraft:codex/hub/artifacts/items/common_weapons
execute if score @s adv.gui_art_tier matches 1 if score @s adv.gui_art_cat matches 2 run function evercraft:codex/hub/artifacts/items/common_armor
execute if score @s adv.gui_art_tier matches 1 if score @s adv.gui_art_cat matches 3 run function evercraft:codex/hub/artifacts/items/common_accessories
execute if score @s adv.gui_art_tier matches 1 if score @s adv.gui_art_cat matches 4 run function evercraft:codex/hub/artifacts/items/common_tools

# === UNCOMMON (tier 2) ===
execute if score @s adv.gui_art_tier matches 2 if score @s adv.gui_art_cat matches 1 run function evercraft:codex/hub/artifacts/items/uncommon_weapons
execute if score @s adv.gui_art_tier matches 2 if score @s adv.gui_art_cat matches 2 run function evercraft:codex/hub/artifacts/items/uncommon_armor
execute if score @s adv.gui_art_tier matches 2 if score @s adv.gui_art_cat matches 3 run function evercraft:codex/hub/artifacts/items/uncommon_accessories
execute if score @s adv.gui_art_tier matches 2 if score @s adv.gui_art_cat matches 4 run function evercraft:codex/hub/artifacts/items/uncommon_tools

# === RARE (tier 3) ===
execute if score @s adv.gui_art_tier matches 3 if score @s adv.gui_art_cat matches 1 run function evercraft:codex/hub/artifacts/items/rare_weapons
execute if score @s adv.gui_art_tier matches 3 if score @s adv.gui_art_cat matches 2 run function evercraft:codex/hub/artifacts/items/rare_armor
execute if score @s adv.gui_art_tier matches 3 if score @s adv.gui_art_cat matches 3 run function evercraft:codex/hub/artifacts/items/rare_accessories
execute if score @s adv.gui_art_tier matches 3 if score @s adv.gui_art_cat matches 4 run function evercraft:codex/hub/artifacts/items/rare_tools

# === ORNATE (tier 4) ===
execute if score @s adv.gui_art_tier matches 4 if score @s adv.gui_art_cat matches 1 run function evercraft:codex/hub/artifacts/items/ornate_weapons
execute if score @s adv.gui_art_tier matches 4 if score @s adv.gui_art_cat matches 2 if score @s adv.gui_page matches 3 run function evercraft:codex/hub/artifacts/items/ornate_armor_1
execute if score @s adv.gui_art_tier matches 4 if score @s adv.gui_art_cat matches 2 if score @s adv.gui_page matches 4 run function evercraft:codex/hub/artifacts/items/ornate_armor_2
execute if score @s adv.gui_art_tier matches 4 if score @s adv.gui_art_cat matches 2 if score @s adv.gui_page matches 5 run function evercraft:codex/hub/artifacts/items/ornate_armor_3
execute if score @s adv.gui_art_tier matches 4 if score @s adv.gui_art_cat matches 3 run function evercraft:codex/hub/artifacts/items/ornate_accessories
execute if score @s adv.gui_art_tier matches 4 if score @s adv.gui_art_cat matches 4 run function evercraft:codex/hub/artifacts/items/ornate_tools

# === EXQUISITE (tier 5) ===
execute if score @s adv.gui_art_tier matches 5 if score @s adv.gui_art_cat matches 1 if score @s adv.gui_page matches 3 run function evercraft:codex/hub/artifacts/items/exquisite_weapons_1
execute if score @s adv.gui_art_tier matches 5 if score @s adv.gui_art_cat matches 1 if score @s adv.gui_page matches 4 run function evercraft:codex/hub/artifacts/items/exquisite_weapons_2
execute if score @s adv.gui_art_tier matches 5 if score @s adv.gui_art_cat matches 2 run function evercraft:codex/hub/artifacts/items/exquisite_armor
execute if score @s adv.gui_art_tier matches 5 if score @s adv.gui_art_cat matches 3 run function evercraft:codex/hub/artifacts/items/exquisite_accessories
execute if score @s adv.gui_art_tier matches 5 if score @s adv.gui_art_cat matches 4 run function evercraft:codex/hub/artifacts/items/exquisite_tools

# === MYTHICAL (tier 6) ===
execute if score @s adv.gui_art_tier matches 6 if score @s adv.gui_art_cat matches 1 if score @s adv.gui_page matches 3 run function evercraft:codex/hub/artifacts/items/mythical_weapons_1
execute if score @s adv.gui_art_tier matches 6 if score @s adv.gui_art_cat matches 1 if score @s adv.gui_page matches 4 run function evercraft:codex/hub/artifacts/items/mythical_weapons_2
execute if score @s adv.gui_art_tier matches 6 if score @s adv.gui_art_cat matches 2 if score @s adv.gui_page matches 3 run function evercraft:codex/hub/artifacts/items/mythical_armor_1
execute if score @s adv.gui_art_tier matches 6 if score @s adv.gui_art_cat matches 2 if score @s adv.gui_page matches 4 run function evercraft:codex/hub/artifacts/items/mythical_armor_2
execute if score @s adv.gui_art_tier matches 6 if score @s adv.gui_art_cat matches 3 run function evercraft:codex/hub/artifacts/items/mythical_accessories
execute if score @s adv.gui_art_tier matches 6 if score @s adv.gui_art_cat matches 4 run function evercraft:codex/hub/artifacts/items/mythical_tools

# === CLASS ARTIFACTS (category 5, all tiers) ===
execute if score @s adv.gui_art_cat matches 5 run function evercraft:codex/hub/artifacts/items/classes_list
