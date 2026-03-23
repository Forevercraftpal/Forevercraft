# Check for interaction entity clicks on the advantage GUI (Section 1)
# Run as the player with menu open (@s = player)
# Note: Back button is handled universally in codex/hub/tick.mcfunction

# === NAVIGATION ARROWS (page switching within section 1) ===
execute as @e[type=interaction,tag=Adv.NavLeftClick,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction at @s run function evercraft:advantage/gui/nav_left
execute as @e[type=interaction,tag=Adv.NavRightClick,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction at @s run function evercraft:advantage/gui/nav_right

# === RESPEC MODE INTERCEPT (overrides page clicks) ===
execute if entity @s[tag=Adv.RespecMode] run return run function evercraft:advantage/gui/check_clicks_respec

# === PAGE-SPECIFIC CLICKS (Section 1: page 1 = Trees, page 2 = Prestige) ===
execute if score @s adv.gui_page matches 1 run function evercraft:advantage/gui/check_clicks_page1
execute if score @s adv.gui_page matches 2 run function evercraft:advantage/gui/check_clicks_page3
