# ============================================================
# Black Market — Close GUI
# ============================================================

tag @s remove BM.InMenu

# Kill all menu elements + anchor
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute as @e[type=text_display,tag=BM.El,distance=..5] if score @s adv.gui_session = #gui_check ec.temp run kill @s
execute as @e[type=interaction,tag=BM.El,distance=..5] if score @s adv.gui_session = #gui_check ec.temp run kill @s
execute as @e[type=item_display,tag=BM.El,distance=..5] if score @s adv.gui_session = #gui_check ec.temp run kill @s
execute as @e[type=marker,tag=BM.Anchor,distance=..5] if score @s adv.gui_session = #gui_check ec.temp run kill @s

# Reset scores
scoreboard players set @s ec.bm_tab 0
scoreboard players set @s ec.bm_page 0
scoreboard players set @s ec.bm_select 0
scoreboard players set @s ec.bm_price 0
scoreboard players set @s ec.bm_confirm -1

# Sound
playsound minecraft:block.barrel.close master @s ~ ~ ~ 0.6 0.8
