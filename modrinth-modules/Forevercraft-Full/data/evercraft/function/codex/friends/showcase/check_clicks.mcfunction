# Showcase — Check clicks (run as player with #gui_owner set)
# Called when ec.sc_in_showcase tag is active

# === PICKER VIEW ===
execute if entity @s[tag=ec.sc_in_picker] as @e[type=interaction,tag=ec.sc_pick_click_0,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/friends/showcase/click_pick {pick:0}
execute if entity @s[tag=ec.sc_in_picker] as @e[type=interaction,tag=ec.sc_pick_click_1,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/friends/showcase/click_pick {pick:1}
execute if entity @s[tag=ec.sc_in_picker] as @e[type=interaction,tag=ec.sc_pick_click_2,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/friends/showcase/click_pick {pick:2}
execute if entity @s[tag=ec.sc_in_picker] as @e[type=interaction,tag=ec.sc_pick_click_3,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/friends/showcase/click_pick {pick:3}
execute if entity @s[tag=ec.sc_in_picker] as @e[type=interaction,tag=ec.sc_pick_click_4,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/friends/showcase/click_pick {pick:4}
execute if entity @s[tag=ec.sc_in_picker] as @e[type=interaction,tag=ec.sc_reroll_btn,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/friends/showcase/click_reroll
execute if entity @s[tag=ec.sc_in_picker] as @e[type=interaction,tag=ec.sc_cancel_btn,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/friends/showcase/close_picker
execute if entity @s[tag=ec.sc_in_picker] as @e[type=interaction,tag=ec.sc_clear_btn,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/friends/showcase/click_clear

# === SLOTS VIEW (not in picker, not viewing other) ===
execute unless entity @s[tag=ec.sc_in_picker] unless entity @s[tag=ec.sc_view_other] as @e[type=interaction,tag=ec.sc_slot_click_0,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/friends/showcase/click_slot {slot:0}
execute unless entity @s[tag=ec.sc_in_picker] unless entity @s[tag=ec.sc_view_other] as @e[type=interaction,tag=ec.sc_slot_click_1,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/friends/showcase/click_slot {slot:1}
execute unless entity @s[tag=ec.sc_in_picker] unless entity @s[tag=ec.sc_view_other] as @e[type=interaction,tag=ec.sc_slot_click_2,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/friends/showcase/click_slot {slot:2}

# === TELEPORT BUTTON (other-view only) ===
execute if entity @s[tag=ec.sc_view_other] as @e[type=interaction,tag=ec.sc_tp_btn,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/friends/showcase/click_tp

# === EQUIPMENT CLICKS (any view, not in picker) ===
execute unless entity @s[tag=ec.sc_in_picker] as @e[type=interaction,tag=ec.sc_eq_click,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/friends/showcase/click_equipment

# === DREAM RATE CLICK (self-view only, not in picker) ===
execute unless entity @s[tag=ec.sc_in_picker] unless entity @s[tag=ec.sc_view_other] as @e[type=interaction,tag=ec.sc_dr_btn,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/friends/showcase/click_dream_rate

# === BACK BUTTON (always available) ===
execute as @e[type=interaction,tag=ec.sc_back_btn,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/friends/showcase/back
