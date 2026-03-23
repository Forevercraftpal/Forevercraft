# Craftforever Codex — Hub click detection
# Run as player in codex, #cf_gui_owner ec.temp = session ID

# Section 9: Recipes (Cookbook + Recipe Book) — CF-specific
execute as @e[type=interaction,tag=CF.HubClick1,distance=..5] if score @s ec.cf_gui_session = #cf_gui_owner ec.temp if data entity @s interaction run function evercraft:craftforever/codex/hub/enter_section {section:9}

# Section 4: Housing (Housing Guide + Trophy Gallery + Laborers) — CF-specific
execute as @e[type=interaction,tag=CF.HubClick2,distance=..5] if score @s ec.cf_gui_session = #cf_gui_owner ec.temp if data entity @s interaction run function evercraft:craftforever/codex/hub/enter_section {section:4}

# Section 10: Discovery (Almanac + Node Map + Material Index) — CF-specific
execute as @e[type=interaction,tag=CF.HubClick3,distance=..5] if score @s ec.cf_gui_session = #cf_gui_owner ec.temp if data entity @s interaction run function evercraft:craftforever/codex/hub/enter_section {section:10}

# === SHARED PAGES — Bridge to FC Hub ===

# Travel Journal → FC section 5 (shared)
execute as @e[type=interaction,tag=CF.HubClick4,distance=..5] if score @s ec.cf_gui_session = #cf_gui_owner ec.temp if data entity @s interaction run function evercraft:craftforever/codex/hub/bridge_to_fc {section:5}

# Cosmetics → FC section 3 (shared)
execute as @e[type=interaction,tag=CF.HubClick5,distance=..5] if score @s ec.cf_gui_session = #cf_gui_owner ec.temp if data entity @s interaction run function evercraft:craftforever/codex/hub/bridge_to_fc {section:3}

# Section 13: Crafting Classes — CF-specific
execute as @e[type=interaction,tag=CF.HubClick6,distance=..5] if score @s ec.cf_gui_session = #cf_gui_owner ec.temp if data entity @s interaction run function evercraft:craftforever/codex/hub/enter_section {section:13}

# Milestones → FC section 8 (shared)
execute as @e[type=interaction,tag=CF.HubClick7,distance=..5] if score @s ec.cf_gui_session = #cf_gui_owner ec.temp if data entity @s interaction run function evercraft:craftforever/codex/hub/bridge_to_fc {section:8}
