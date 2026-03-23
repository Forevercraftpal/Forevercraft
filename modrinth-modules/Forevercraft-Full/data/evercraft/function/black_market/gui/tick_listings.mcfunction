# Black Market — Listings Tab Tick
# Detects reclaim and collect clicks

# Reclaim buttons (5 slots)
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute as @e[type=interaction,tag=BM.Reclaim0,distance=..5,limit=1] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:black_market/escrow/on_click_reclaim_0
execute as @e[type=interaction,tag=BM.Reclaim1,distance=..5,limit=1] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:black_market/escrow/on_click_reclaim_1
execute as @e[type=interaction,tag=BM.Reclaim2,distance=..5,limit=1] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:black_market/escrow/on_click_reclaim_2
execute as @e[type=interaction,tag=BM.Reclaim3,distance=..5,limit=1] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:black_market/escrow/on_click_reclaim_3
execute as @e[type=interaction,tag=BM.Reclaim4,distance=..5,limit=1] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:black_market/escrow/on_click_reclaim_4

# Collect balance button
execute as @e[type=interaction,tag=BM.CollectBtn,distance=..5,limit=1] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:black_market/escrow/on_click_collect
