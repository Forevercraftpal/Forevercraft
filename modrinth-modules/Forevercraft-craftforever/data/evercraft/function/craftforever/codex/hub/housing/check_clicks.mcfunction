# Housing Section — Click detection
# Run as player

# Page 1 (overview): detect sub-tab clicks
execute if score @s ec.cf_codex_page matches 1 as @e[type=interaction,tag=CF.HousingClick1,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/housing/click_guide
execute if score @s ec.cf_codex_page matches 1 as @e[type=interaction,tag=CF.HousingClick2,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/housing/click_trophies
execute if score @s ec.cf_codex_page matches 1 as @e[type=interaction,tag=CF.HousingClick3,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/housing/click_laborers

# Page 3 (trophy gallery): detect trophy clicks
execute if score @s ec.cf_codex_page matches 3 run function evercraft:craftforever/codex/hub/trophies/check_clicks
