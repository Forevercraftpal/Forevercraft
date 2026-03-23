# Phase 3: QUENCH — Per-tick (cooling bar drops)

scoreboard players add @s ec.cf_timer 1

# Drop speed by tier: every N ticks subtract 5
# Tier 0: every 8 ticks, Tier 4: every 3 ticks
scoreboard players set #cf_drop_rate ec.cf_temp 8
execute if score @s ec.cf_mat_tier matches 1 run scoreboard players set #cf_drop_rate ec.cf_temp 7
execute if score @s ec.cf_mat_tier matches 2 run scoreboard players set #cf_drop_rate ec.cf_temp 5
execute if score @s ec.cf_mat_tier matches 3 run scoreboard players set #cf_drop_rate ec.cf_temp 4
execute if score @s ec.cf_mat_tier matches 4 run scoreboard players set #cf_drop_rate ec.cf_temp 3

scoreboard players operation #cf_mod ec.cf_temp = @s ec.cf_timer
scoreboard players operation #cf_mod ec.cf_temp %= #cf_drop_rate ec.cf_temp
execute if score #cf_mod ec.cf_temp matches 0 run scoreboard players remove @s ec.cf_quench 5

# Auto-resolve if quench reaches 0
execute if score @s ec.cf_quench matches ..0 run function evercraft:craftforever/forging/minigame/phase3_quench/click

# Only update visual on drop ticks
execute unless score #cf_mod ec.cf_temp matches 0 run return 0

# Render bar — show current position as gradient with green lock zone
# Lock zone is 2 chars wide around lock_zone/5 position
# Simplified: show bar as red→orange→green(zone)→blue gradient based on quench value
execute if score @s ec.cf_quench matches 91..100 at @s run data modify entity @e[type=text_display,tag=CF.QuenchBar,distance=..7,limit=1] text set value [{text:"\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588",color:"red"}]
execute if score @s ec.cf_quench matches 76..90 at @s run data modify entity @e[type=text_display,tag=CF.QuenchBar,distance=..7,limit=1] text set value [{text:"\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588",color:"gold"},{text:"\u2591\u2591\u2591\u2591",color:"dark_gray"}]
execute if score @s ec.cf_quench matches 61..75 at @s run data modify entity @e[type=text_display,tag=CF.QuenchBar,distance=..7,limit=1] text set value [{text:"\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588",color:"yellow"},{text:"\u2588\u2588",color:"green",bold:true},{text:"\u2591\u2591\u2591\u2591\u2591\u2591",color:"dark_gray"}]
execute if score @s ec.cf_quench matches 46..60 at @s run data modify entity @e[type=text_display,tag=CF.QuenchBar,distance=..7,limit=1] text set value [{text:"\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588",color:"yellow"},{text:"\u2588\u2588",color:"green",bold:true},{text:"\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591",color:"dark_gray"}]
execute if score @s ec.cf_quench matches 31..45 at @s run data modify entity @e[type=text_display,tag=CF.QuenchBar,distance=..7,limit=1] text set value [{text:"\u2588\u2588\u2588\u2588\u2588\u2588",color:"aqua"},{text:"\u2588\u2588",color:"green",bold:true},{text:"\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591",color:"dark_gray"}]
execute if score @s ec.cf_quench matches 16..30 at @s run data modify entity @e[type=text_display,tag=CF.QuenchBar,distance=..7,limit=1] text set value [{text:"\u2588\u2588\u2588\u2588",color:"blue"},{text:"\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591",color:"dark_gray"}]
execute if score @s ec.cf_quench matches 1..15 at @s run data modify entity @e[type=text_display,tag=CF.QuenchBar,distance=..7,limit=1] text set value [{text:"\u2588\u2588",color:"dark_blue"},{text:"\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591",color:"dark_gray"}]

# Check for Quench click
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute as @e[type=interaction,tag=CF.QuenchBtn,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:craftforever/forging/minigame/phase3_quench/on_click
