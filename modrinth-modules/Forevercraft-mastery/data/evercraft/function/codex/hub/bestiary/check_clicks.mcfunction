# Bestiary Section — Click Detection (Section 19, standalone)
# Run as the player with menu open

# Navigation arrows (standalone tags, wraps pages 2-6)
execute as @e[type=interaction,tag=Bs.StNavLeftClick,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/bestiary/nav {dir:-1}
execute as @e[type=interaction,tag=Bs.StNavRightClick,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/bestiary/nav {dir:1}

# Bestiary mob clicks (pages 2-6 reuse existing bestiary GUI)
execute if score @s adv.gui_page matches 2..6 run function evercraft:bestiary/gui/check_clicks
