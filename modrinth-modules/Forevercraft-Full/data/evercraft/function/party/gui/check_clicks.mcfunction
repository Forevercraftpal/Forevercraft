# Party Section — Check Clicks (Section 7)
# Handles nav arrows, management action buttons, and stale state detection
# Run as the player with menu open

# === NAVIGATION ARROWS (page switching: Management / Bonds) ===
execute as @e[type=interaction,tag=Adv.NavLeftClick,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction at @s run function evercraft:party/gui/nav_left
execute as @e[type=interaction,tag=Adv.NavRightClick,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction at @s run function evercraft:party/gui/nav_right

# === PAGE 1: MANAGEMENT ACTION BUTTONS ===
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.PtyClickCreate,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:party/gui/click_create
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.PtyClickInvite,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:party/gui/click_invite
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.PtyClickPing,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:party/gui/click_ping
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.PtyClickDisband,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:party/gui/click_disband
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.PtyClickLeave,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:party/gui/click_leave
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.PtyClickDRBoard,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:party/gui/click_dr_board

# === PAGE 2: BONDS (informational only — no clicks) ===

# === STALE STATE DETECTION (page 1 only) ===
# Every tick, check if party_size or party_role changed since last spawn
# If so, respawn management page to reflect the new state
# (Handles: someone joins/leaves while GUI is open, leader promotion, etc.)
# Uses per-player cache scores (ec.pty_csz / ec.pty_crl) to avoid cross-player interference
execute if score @s adv.gui_page matches 1 unless score @s ec.pty_csz = @s ec.party_size at @s facing entity @e[type=marker,tag=Adv.MenuAnchor,distance=..5,limit=1,sort=nearest] feet run function evercraft:party/gui/respawn_management
execute if score @s adv.gui_page matches 1 unless score @s ec.pty_crl = @s ec.party_role at @s facing entity @e[type=marker,tag=Adv.MenuAnchor,distance=..5,limit=1,sort=nearest] feet run function evercraft:party/gui/respawn_management
