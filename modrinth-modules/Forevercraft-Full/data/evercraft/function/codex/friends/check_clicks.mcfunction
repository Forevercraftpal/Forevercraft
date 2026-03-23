# Codex Friends — Check Clicks (section 12)
# Run as the player with #gui_owner set

# === SHOWCASE VIEW (short-circuits all other routing) ===
execute if entity @s[tag=ec.sc_in_showcase] run return run function evercraft:codex/friends/showcase/check_clicks

# === SHOWCASE BUTTON (from list view) ===
execute unless entity @s[tag=ec.fr_detail_view] as @e[type=interaction,tag=ec.fr_gui_showcase_btn,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/friends/showcase/enter

# === LIST VIEW (no ec.fr_detail_view tag) ===
execute unless entity @s[tag=ec.fr_detail_view] as @e[type=interaction,tag=ec.fr_gui_prev,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/friends/click_prev
execute unless entity @s[tag=ec.fr_detail_view] as @e[type=interaction,tag=ec.fr_gui_next,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/friends/click_next
execute unless entity @s[tag=ec.fr_detail_view] as @e[type=interaction,tag=ec.fr_gui_entry_click,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/friends/click_entry

# === DETAIL VIEW ===
execute if entity @s[tag=ec.fr_detail_view] as @e[type=interaction,tag=ec.fr_gui_detail_back,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/friends/detail_back
execute if entity @s[tag=ec.fr_detail_view] as @e[type=interaction,tag=ec.fr_gui_gift_btn,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/friends/detail_gift
execute if entity @s[tag=ec.fr_detail_view] as @e[type=interaction,tag=ec.fr_gui_title_btn,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/friends/detail_title
execute if entity @s[tag=ec.fr_detail_view] as @e[type=interaction,tag=ec.fr_gui_remove_btn,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/friends/detail_remove
execute if entity @s[tag=ec.fr_detail_view] as @e[type=interaction,tag=ec.fr_gui_marry_btn,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/friends/detail_marry
execute if entity @s[tag=ec.fr_detail_view] as @e[type=interaction,tag=ec.fr_gui_divorce_btn,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/friends/detail_divorce
execute if entity @s[tag=ec.fr_detail_view] as @e[type=interaction,tag=ec.fr_gui_view_sc_btn,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/friends/showcase/view_other
