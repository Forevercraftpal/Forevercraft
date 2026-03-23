# Discovery Section — Click detection
# Run as player

# Page 1 (overview): detect sub-tab clicks
execute if score @s ec.cf_codex_page matches 1 as @e[type=interaction,tag=CF.DiscoveryClick1,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/discovery/click_almanac
execute if score @s ec.cf_codex_page matches 1 as @e[type=interaction,tag=CF.DiscoveryClick2,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/discovery/click_nodemap
execute if score @s ec.cf_codex_page matches 1 as @e[type=interaction,tag=CF.DiscoveryClick3,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/discovery/click_materials

# Almanac internal nav (when on almanac sub-page)
execute if score @s ec.cf_codex_page matches 2 run function evercraft:craftforever/codex/hub/almanac/check_clicks

# Node Map internal nav (when on node map sub-page)
execute if score @s ec.cf_codex_page matches 3 run function evercraft:craftforever/codex/hub/nodemap/check_clicks

# Material Index clicks (page 4)
execute if score @s ec.cf_codex_page matches 4 as @e[type=interaction,tag=CF.MatRow1,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/materials/click_material
execute if score @s ec.cf_codex_page matches 4 as @e[type=interaction,tag=CF.MatRow2,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/materials/click_material
execute if score @s ec.cf_codex_page matches 4 as @e[type=interaction,tag=CF.MatRow3,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/materials/click_material
execute if score @s ec.cf_codex_page matches 4 as @e[type=interaction,tag=CF.MatRow4,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/materials/click_material
execute if score @s ec.cf_codex_page matches 4 as @e[type=interaction,tag=CF.MatRow5,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/materials/click_material
execute if score @s ec.cf_codex_page matches 4 as @e[type=interaction,tag=CF.MatRow6,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/materials/click_material
execute if score @s ec.cf_codex_page matches 4 as @e[type=interaction,tag=CF.MatRow7,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/materials/click_material
execute if score @s ec.cf_codex_page matches 4 as @e[type=interaction,tag=CF.MatRow8,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/materials/click_material
execute if score @s ec.cf_codex_page matches 4 as @e[type=interaction,tag=CF.MatRow9,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/materials/click_material
execute if score @s ec.cf_codex_page matches 4 as @e[type=interaction,tag=CF.MatRow10,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/materials/click_material
execute if score @s ec.cf_codex_page matches 4 as @e[type=interaction,tag=CF.MatRow11,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/materials/click_material
execute if score @s ec.cf_codex_page matches 4 as @e[type=interaction,tag=CF.MatRow12,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/materials/click_material
execute if score @s ec.cf_codex_page matches 4 as @e[type=interaction,tag=CF.MatRow13,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/materials/click_material
execute if score @s ec.cf_codex_page matches 4 as @e[type=interaction,tag=CF.MatRow14,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/materials/click_material
execute if score @s ec.cf_codex_page matches 4 as @e[type=interaction,tag=CF.MatRow15,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/materials/click_material
