# Craftforever Codex — Per-tick GUI logic
# Run as player with CF.InCodex tag, at player position

# Close if player drops/loses codex item (also accept eternal/phoenix codex — opens CF hub via selector)
execute unless items entity @s weapon.mainhand *[custom_data~{craftforever_codex:true}] unless items entity @s weapon.offhand *[custom_data~{craftforever_codex:true}] unless items entity @s weapon.mainhand book[custom_data~{eternal_codex:true}] unless items entity @s weapon.offhand book[custom_data~{eternal_codex:true}] unless items entity @s weapon.mainhand book[custom_data~{phoenix_codex:true}] unless items entity @s weapon.offhand book[custom_data~{phoenix_codex:true}] run return run function evercraft:craftforever/codex/hub/close

# Store session for entity filtering (before cooldown gate so flush can session-filter)
scoreboard players operation #cf_gui_owner ec.temp = @s ec.cf_gui_session

# Cooldown gate — flush stale interaction data during cooldown
# Right-click re-consume while in menu stores click data on interaction entities — clear it
# Session-filtered: only flush THIS player's entities, not a nearby player's legitimate clicks
execute if score @s ec.cf_codex_cd matches 1.. as @e[type=interaction,tag=CF.MenuElement,distance=..5] if score @s ec.cf_gui_session = #cf_gui_owner ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score @s ec.cf_codex_cd matches 1.. run return run scoreboard players remove @s ec.cf_codex_cd 1

# Stamp new entities with session ID (entities spawned by section transitions)
scoreboard players operation #cf_gui_stamp ec.temp = @s ec.cf_gui_session
execute as @e[type=marker,tag=CF.MenuAnchor,distance=..5] if score @s ec.cf_gui_session = #cf_gui_stamp ec.temp at @s as @e[tag=CF.MenuElement,distance=..5] unless score @s ec.cf_gui_session matches 1.. run scoreboard players operation @s ec.cf_gui_session = #cf_gui_stamp ec.temp
# Fallback stamp from player position (covers entities spawned after player moved from anchor)
execute as @e[tag=CF.MenuElement,distance=..5] unless score @s ec.cf_gui_session matches 1.. run scoreboard players operation @s ec.cf_gui_session = #cf_gui_stamp ec.temp

# Sub-tab sections: back from sub-page returns to overview (intercept before generic back)
execute if score @s ec.cf_codex_section matches 4 if score @s ec.cf_codex_page matches 2.. as @e[type=interaction,tag=CF.BackBtnClick,distance=..5] if score @s ec.cf_gui_session = #cf_gui_owner ec.temp if data entity @s interaction run function evercraft:craftforever/codex/hub/housing/back_to_overview
execute if score @s ec.cf_codex_section matches 9 if score @s ec.cf_codex_page matches 2.. as @e[type=interaction,tag=CF.BackBtnClick,distance=..5] if score @s ec.cf_gui_session = #cf_gui_owner ec.temp if data entity @s interaction run function evercraft:craftforever/codex/hub/recipes/back_to_overview
execute if score @s ec.cf_codex_section matches 10 if score @s ec.cf_codex_page matches 2.. as @e[type=interaction,tag=CF.BackBtnClick,distance=..5] if score @s ec.cf_gui_session = #cf_gui_owner ec.temp if data entity @s interaction run function evercraft:craftforever/codex/hub/discovery/back_to_overview
execute if score @s ec.cf_codex_section matches 3 if score @s ec.cf_codex_page matches 2.. as @e[type=interaction,tag=CF.BackBtnClick,distance=..5] if score @s ec.cf_gui_session = #cf_gui_owner ec.temp if data entity @s interaction run function evercraft:craftforever/codex/hub/cookbook/back_to_overview
execute if score @s ec.cf_codex_section matches 14 if score @s ec.cf_codex_page matches 2.. as @e[type=interaction,tag=CF.BackBtnClick,distance=..5] if score @s ec.cf_gui_session = #cf_gui_owner ec.temp if data entity @s interaction run function evercraft:craftforever/codex/hub/cf_milestones/back_to_overview

# Check back button first (universal across all sections)
execute if score @s ec.cf_codex_section matches 1.. as @e[type=interaction,tag=CF.BackBtnClick,distance=..5] if score @s ec.cf_gui_session = #cf_gui_owner ec.temp if data entity @s interaction run function evercraft:craftforever/codex/hub/back_to_hub

# Second cooldown gate — catches same-tick back_to_hub which sets cooldown after the first check
execute if score @s ec.cf_codex_cd matches 1.. as @e[type=interaction,tag=CF.MenuElement,distance=..5] if score @s ec.cf_gui_session = #cf_gui_owner ec.temp if data entity @s interaction run data remove entity @s interaction
execute if score @s ec.cf_codex_cd matches 1.. run return run scoreboard players remove @s ec.cf_codex_cd 1

# Route to appropriate click handler based on current section
execute if score @s ec.cf_codex_section matches 0 run function evercraft:craftforever/codex/hub/check_clicks_hub
execute if score @s ec.cf_codex_section matches 1 run function evercraft:craftforever/codex/hub/almanac/check_clicks
execute if score @s ec.cf_codex_section matches 3 run function evercraft:craftforever/codex/hub/cookbook/check_clicks
execute if score @s ec.cf_codex_section matches 4 run function evercraft:craftforever/codex/hub/housing/check_clicks
execute if score @s ec.cf_codex_section matches 9 run function evercraft:craftforever/codex/hub/recipes/check_clicks
execute if score @s ec.cf_codex_section matches 10 run function evercraft:craftforever/codex/hub/discovery/check_clicks
# (Almanac internal nav handled inside discovery/check_clicks)

# New sections: Travel Journal, Cosmetics, Crafting Classes, Milestones
execute if score @s ec.cf_codex_section matches 11 run function evercraft:craftforever/codex/hub/travel_journal/check_clicks
execute if score @s ec.cf_codex_section matches 12 run function evercraft:craftforever/codex/hub/cf_cosmetics/check_clicks
execute if score @s ec.cf_codex_section matches 13 run function evercraft:craftforever/codex/hub/crafting_classes/check_clicks
execute if score @s ec.cf_codex_section matches 14 run function evercraft:craftforever/codex/hub/cf_milestones/check_clicks
