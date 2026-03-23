# Artifact Collection — Click Routing
# Handles clicks at all 3 levels: tier picker, category picker, item list
# Run as the player

# === Level 1: Tier picker clicks (page 1) ===
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.ArtTrClick0,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/enter_tier_click {tier:1}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.ArtTrClick1,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/enter_tier_click {tier:2}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.ArtTrClick2,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/enter_tier_click {tier:3}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.ArtTrClick3,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/enter_tier_click {tier:4}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.ArtTrClick4,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/enter_tier_click {tier:5}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.ArtTrClick5,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/enter_tier_click {tier:6}
# Constellations button
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.ArtConstClick,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/enter_constellations_click
# Random Browse button
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.ArtRandomClick,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/random_browse_click

# === Level 2: Category picker clicks (page 2) ===
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.ArtCatClick0,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/enter_category_click {category:1}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.ArtCatClick1,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/enter_category_click {category:2}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.ArtCatClick2,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/enter_category_click {category:3}
# Tools
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.ArtCatClick3,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/enter_category_click {category:4}
# Class Artifacts
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.ArtCatClick4,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/enter_category_click {category:5}
# Constellation clicks (page 2, constellation grid)
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.ArtCnClick0,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/enter_constellation_click {cn:1}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.ArtCnClick1,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/enter_constellation_click {cn:2}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.ArtCnClick2,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/enter_constellation_click {cn:3}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.ArtCnClick3,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/enter_constellation_click {cn:4}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.ArtCnClick4,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/enter_constellation_click {cn:5}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.ArtCnClick5,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/enter_constellation_click {cn:6}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.ArtCnClick6,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/enter_constellation_click {cn:7}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.ArtCnClick7,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/enter_constellation_click {cn:8}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.ArtCnClick8,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/enter_constellation_click {cn:9}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.ArtCnClick9,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/enter_constellation_click {cn:10}

# === Sub-navigation click (levels 2-3) ===
execute if score @s adv.gui_page matches 2.. as @e[type=interaction,tag=Adv.ArtSubNavClick,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/subnav_click

# === Level 3: Nav arrow clicks (page 3+) ===
execute if score @s adv.gui_page matches 3.. as @e[type=interaction,tag=Adv.NavLeftClick,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/nav_left
execute if score @s adv.gui_page matches 3.. as @e[type=interaction,tag=Adv.NavRightClick,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/nav_right

# === Level 3: Item clicks (page 3+) ===
execute if score @s adv.gui_page matches 3.. unless score @s adv.gui_art_cat matches 5 run function evercraft:codex/hub/artifacts/check_item_clicks

# === Class list clicks (page 3, category 5) ===
execute if score @s adv.gui_page matches 3 if score @s adv.gui_art_cat matches 5 as @e[type=interaction,tag=Adv.ArtClsClick1,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/enter_class_art_click {class_id:1}
execute if score @s adv.gui_page matches 3 if score @s adv.gui_art_cat matches 5 as @e[type=interaction,tag=Adv.ArtClsClick2,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/enter_class_art_click {class_id:2}
execute if score @s adv.gui_page matches 3 if score @s adv.gui_art_cat matches 5 as @e[type=interaction,tag=Adv.ArtClsClick3,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/enter_class_art_click {class_id:3}
execute if score @s adv.gui_page matches 3 if score @s adv.gui_art_cat matches 5 as @e[type=interaction,tag=Adv.ArtClsClick4,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/enter_class_art_click {class_id:4}
execute if score @s adv.gui_page matches 3 if score @s adv.gui_art_cat matches 5 as @e[type=interaction,tag=Adv.ArtClsClick5,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/enter_class_art_click {class_id:5}
execute if score @s adv.gui_page matches 3 if score @s adv.gui_art_cat matches 5 as @e[type=interaction,tag=Adv.ArtClsClick6,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/enter_class_art_click {class_id:6}
execute if score @s adv.gui_page matches 3 if score @s adv.gui_art_cat matches 5 as @e[type=interaction,tag=Adv.ArtClsClick7,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/enter_class_art_click {class_id:7}
execute if score @s adv.gui_page matches 3 if score @s adv.gui_art_cat matches 5 as @e[type=interaction,tag=Adv.ArtClsClick8,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/enter_class_art_click {class_id:8}
execute if score @s adv.gui_page matches 3 if score @s adv.gui_art_cat matches 5 as @e[type=interaction,tag=Adv.ArtClsClick9,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/enter_class_art_click {class_id:9}
execute if score @s adv.gui_page matches 3 if score @s adv.gui_art_cat matches 5 as @e[type=interaction,tag=Adv.ArtClsClick10,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/enter_class_art_click {class_id:10}
execute if score @s adv.gui_page matches 3 if score @s adv.gui_art_cat matches 5 as @e[type=interaction,tag=Adv.ArtClsClick11,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/enter_class_art_click {class_id:11}
execute if score @s adv.gui_page matches 3 if score @s adv.gui_art_cat matches 5 as @e[type=interaction,tag=Adv.ArtClsClick12,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/enter_class_art_click {class_id:12}
execute if score @s adv.gui_page matches 3 if score @s adv.gui_art_cat matches 5 as @e[type=interaction,tag=Adv.ArtClsClick13,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/enter_class_art_click {class_id:13}

# === Class artifact clicks (page 4, category 5) — delegate to existing classes click handler ===
execute if score @s adv.gui_page matches 4 if score @s adv.gui_art_cat matches 5 run function evercraft:codex/hub/classes/check_clicks_artifacts
