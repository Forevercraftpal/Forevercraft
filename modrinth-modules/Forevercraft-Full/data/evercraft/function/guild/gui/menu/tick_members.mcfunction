# Guild Menu — Members page tick (click detection)
# @s = player with menu open

# === DETAIL VIEW MODE ===
# If viewing a member's detail, check back button only
execute if entity @s[tag=ec.gm_detail_view] as @e[type=interaction,tag=ec.gm_detail_back,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:guild/gui/menu/click_member_back
execute if entity @s[tag=ec.gm_detail_view] run return 0

# === ROSTER VIEW ===
# Check prev/next page clicks
execute as @e[type=interaction,tag=ec.gm_prev_click,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:guild/gui/menu/click_member_prev
execute as @e[type=interaction,tag=ec.gm_next_click,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:guild/gui/menu/click_member_next

# Check member row clicks (open detail view)
execute as @e[type=interaction,tag=ec.gm_member_click,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:guild/gui/menu/click_member_row
