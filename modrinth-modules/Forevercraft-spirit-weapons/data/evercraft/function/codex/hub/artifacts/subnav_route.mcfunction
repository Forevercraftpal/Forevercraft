# Artifact Collection — Sub-Nav Route
# Routes sub-nav click based on current page level
# Run as the player, at player, facing anchor

# Page 2 (categories) → go back to tiers
execute if score @s adv.gui_page matches 2 run function evercraft:codex/hub/artifacts/back_to_tiers

# Page 4, category 5 (class artifacts) → go back to classes list
execute if score @s adv.gui_page matches 4 if score @s adv.gui_art_cat matches 5 run function evercraft:codex/hub/artifacts/back_to_classes_list

# Page 3, category 6 (constellation items) → go back to constellation grid
execute if score @s adv.gui_page matches 3 if score @s adv.gui_art_cat matches 6 run return run function evercraft:codex/hub/artifacts/back_to_constellations

# Page 3+ (item list) → go back to categories
execute if score @s adv.gui_page matches 3 run function evercraft:codex/hub/artifacts/back_to_categories
execute if score @s adv.gui_page matches 4.. unless score @s adv.gui_art_cat matches 5 run function evercraft:codex/hub/artifacts/back_to_categories
