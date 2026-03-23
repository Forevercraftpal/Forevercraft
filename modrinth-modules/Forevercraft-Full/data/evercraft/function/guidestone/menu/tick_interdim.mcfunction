# Guidestone Menu — Interdimensional page tick (check clicks on cross-dim destination list)
# Run as player at their position (already verified in_menu and view=2)

# Check destination clicks (slots 0-7) — same slot tags, different click handler
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute as @e[type=interaction,tag=ec.gs_slot0,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:guidestone/menu/click_dest_interdim {slot:0}
execute as @e[type=interaction,tag=ec.gs_slot1,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:guidestone/menu/click_dest_interdim {slot:1}
execute as @e[type=interaction,tag=ec.gs_slot2,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:guidestone/menu/click_dest_interdim {slot:2}
execute as @e[type=interaction,tag=ec.gs_slot3,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:guidestone/menu/click_dest_interdim {slot:3}
execute as @e[type=interaction,tag=ec.gs_slot4,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:guidestone/menu/click_dest_interdim {slot:4}
execute as @e[type=interaction,tag=ec.gs_slot5,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:guidestone/menu/click_dest_interdim {slot:5}
execute as @e[type=interaction,tag=ec.gs_slot6,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:guidestone/menu/click_dest_interdim {slot:6}
execute as @e[type=interaction,tag=ec.gs_slot7,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:guidestone/menu/click_dest_interdim {slot:7}

# Check page navigation
execute as @e[type=interaction,tag=ec.gs_nav_prev,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:guidestone/menu/prev_page
execute as @e[type=interaction,tag=ec.gs_nav_next,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:guidestone/menu/next_page
