# ============================================================
# Cookbook Section — Click Detection
# Runs as player from tick.mcfunction
# ============================================================

# Page 1 (overview): detect category clicks
execute if score @s ec.cf_codex_page matches 1 as @e[type=interaction,tag=CF.CkCat0Click,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/cookbook/click_category {cat:0}
execute if score @s ec.cf_codex_page matches 1 as @e[type=interaction,tag=CF.CkCat1Click,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/cookbook/click_category {cat:1}
execute if score @s ec.cf_codex_page matches 1 as @e[type=interaction,tag=CF.CkCat2Click,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/cookbook/click_category {cat:2}
execute if score @s ec.cf_codex_page matches 1 as @e[type=interaction,tag=CF.CkCat3Click,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/cookbook/click_category {cat:3}
execute if score @s ec.cf_codex_page matches 1 as @e[type=interaction,tag=CF.CkCat4Click,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/cookbook/click_category {cat:4}
execute if score @s ec.cf_codex_page matches 1 as @e[type=interaction,tag=CF.CkCat5Click,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/cookbook/click_category {cat:5}
execute if score @s ec.cf_codex_page matches 1 as @e[type=interaction,tag=CF.CkCat6Click,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/cookbook/click_category {cat:6}
execute if score @s ec.cf_codex_page matches 1 as @e[type=interaction,tag=CF.CkCat7Click,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/cookbook/click_category {cat:7}
execute if score @s ec.cf_codex_page matches 1 as @e[type=interaction,tag=CF.CkCat8Click,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/cookbook/click_category {cat:8}
execute if score @s ec.cf_codex_page matches 1 as @e[type=interaction,tag=CF.CkCat9Click,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/cookbook/click_category {cat:9}
execute if score @s ec.cf_codex_page matches 1 as @e[type=interaction,tag=CF.CkCat10Click,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/cookbook/click_category {cat:10}

# Navigation arrows
execute if score @s ec.cf_codex_page matches 1 as @e[type=interaction,tag=CF.CkNavPrevClick,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/cookbook/click_nav_prev
execute if score @s ec.cf_codex_page matches 1 as @e[type=interaction,tag=CF.CkNavNextClick,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/cookbook/click_nav_next
