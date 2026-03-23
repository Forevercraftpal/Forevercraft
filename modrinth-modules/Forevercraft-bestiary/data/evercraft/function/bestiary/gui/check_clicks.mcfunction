# Bestiary GUI — Check Clicks (Pages 2-5)
# Run as the player with menu open, bestiary page active

# Row clicks (0-14 per page) — route to mob_click with page-relative index
execute as @e[type=interaction,tag=Bs.RowClick0,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:bestiary/gui/on_row_click {row:0}
execute as @e[type=interaction,tag=Bs.RowClick1,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:bestiary/gui/on_row_click {row:1}
execute as @e[type=interaction,tag=Bs.RowClick2,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:bestiary/gui/on_row_click {row:2}
execute as @e[type=interaction,tag=Bs.RowClick3,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:bestiary/gui/on_row_click {row:3}
execute as @e[type=interaction,tag=Bs.RowClick4,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:bestiary/gui/on_row_click {row:4}
execute as @e[type=interaction,tag=Bs.RowClick5,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:bestiary/gui/on_row_click {row:5}
execute as @e[type=interaction,tag=Bs.RowClick6,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:bestiary/gui/on_row_click {row:6}
execute as @e[type=interaction,tag=Bs.RowClick7,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:bestiary/gui/on_row_click {row:7}
execute as @e[type=interaction,tag=Bs.RowClick8,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:bestiary/gui/on_row_click {row:8}
execute as @e[type=interaction,tag=Bs.RowClick9,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:bestiary/gui/on_row_click {row:9}
execute as @e[type=interaction,tag=Bs.RowClick10,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:bestiary/gui/on_row_click {row:10}
execute as @e[type=interaction,tag=Bs.RowClick11,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:bestiary/gui/on_row_click {row:11}
execute as @e[type=interaction,tag=Bs.RowClick12,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:bestiary/gui/on_row_click {row:12}
execute as @e[type=interaction,tag=Bs.RowClick13,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:bestiary/gui/on_row_click {row:13}
execute as @e[type=interaction,tag=Bs.RowClick14,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:bestiary/gui/on_row_click {row:14}
