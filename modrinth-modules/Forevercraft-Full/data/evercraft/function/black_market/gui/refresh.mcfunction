# ============================================================
# Black Market — Refresh GUI (Full Rebuild)
# Kills ALL elements, then respawns at the BM.Anchor position
# so the GUI never shifts even if the player moves their head
# ============================================================

# Kill ALL menu elements (at player position for search radius)
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute as @e[type=text_display,tag=BM.El,distance=..5] if score @s adv.gui_session = #gui_check ec.temp run kill @s
execute as @e[type=interaction,tag=BM.El,distance=..5] if score @s adv.gui_session = #gui_check ec.temp run kill @s
execute as @e[type=item_display,tag=BM.El,distance=..5] if score @s adv.gui_session = #gui_check ec.temp run kill @s

# Rebuild at anchor position/rotation (stable reference from when menu opened)
execute at @s at @e[type=marker,tag=BM.Anchor,distance=..5,limit=1,sort=nearest] run function evercraft:black_market/gui/rebuild
