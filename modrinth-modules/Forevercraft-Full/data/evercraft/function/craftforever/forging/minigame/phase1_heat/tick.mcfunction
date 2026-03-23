# Phase 1: HEAT — Per-tick update

# Increment timer
scoreboard players add @s ec.cf_timer 1

# Every 4 ticks, increment heat by 1 (0→100 over 400 ticks = 20 seconds)
scoreboard players set #cf_mod ec.cf_temp 4
scoreboard players operation #cf_tick_mod ec.cf_temp = @s ec.cf_timer
scoreboard players operation #cf_tick_mod ec.cf_temp %= #cf_mod ec.cf_temp
execute unless score #cf_tick_mod ec.cf_temp matches 0 run return 0

scoreboard players add @s ec.cf_heat 1

# Auto-fail if overheated
execute if score @s ec.cf_heat matches 101.. run function evercraft:craftforever/forging/minigame/phase1_heat/click
execute unless entity @s[tag=CF.Forging] run return 0

# Update bar visual (20 chars, each = 5 heat units)
# Gray(0-25) → Yellow(26-50) → Orange(51-70) → WHITE/SWEET SPOT(71-85) → Red(86-100)
execute if score @s ec.cf_heat matches 0..5 at @s run data modify entity @e[type=text_display,tag=CF.HeatBar,distance=..7,limit=1] text set value [{text:"\u2588",color:"gray"},{text:"\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591",color:"dark_gray"}]
execute if score @s ec.cf_heat matches 6..10 at @s run data modify entity @e[type=text_display,tag=CF.HeatBar,distance=..7,limit=1] text set value [{text:"\u2588\u2588",color:"gray"},{text:"\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591",color:"dark_gray"}]
execute if score @s ec.cf_heat matches 11..15 at @s run data modify entity @e[type=text_display,tag=CF.HeatBar,distance=..7,limit=1] text set value [{text:"\u2588\u2588\u2588",color:"gray"},{text:"\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591",color:"dark_gray"}]
execute if score @s ec.cf_heat matches 16..20 at @s run data modify entity @e[type=text_display,tag=CF.HeatBar,distance=..7,limit=1] text set value [{text:"\u2588\u2588\u2588\u2588",color:"gray"},{text:"\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591",color:"dark_gray"}]
execute if score @s ec.cf_heat matches 21..25 at @s run data modify entity @e[type=text_display,tag=CF.HeatBar,distance=..7,limit=1] text set value [{text:"\u2588\u2588\u2588\u2588\u2588",color:"gray"},{text:"\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591",color:"dark_gray"}]
execute if score @s ec.cf_heat matches 26..35 at @s run data modify entity @e[type=text_display,tag=CF.HeatBar,distance=..7,limit=1] text set value [{text:"\u2588\u2588\u2588\u2588\u2588",color:"gray"},{text:"\u2588\u2588",color:"yellow"},{text:"\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591",color:"dark_gray"}]
execute if score @s ec.cf_heat matches 36..50 at @s run data modify entity @e[type=text_display,tag=CF.HeatBar,distance=..7,limit=1] text set value [{text:"\u2588\u2588\u2588\u2588\u2588",color:"gray"},{text:"\u2588\u2588\u2588\u2588\u2588",color:"yellow"},{text:"\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591",color:"dark_gray"}]
execute if score @s ec.cf_heat matches 51..60 at @s run data modify entity @e[type=text_display,tag=CF.HeatBar,distance=..7,limit=1] text set value [{text:"\u2588\u2588\u2588\u2588\u2588",color:"gray"},{text:"\u2588\u2588\u2588\u2588\u2588",color:"yellow"},{text:"\u2588\u2588",color:"gold"},{text:"\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591",color:"dark_gray"}]
execute if score @s ec.cf_heat matches 61..70 at @s run data modify entity @e[type=text_display,tag=CF.HeatBar,distance=..7,limit=1] text set value [{text:"\u2588\u2588\u2588\u2588\u2588",color:"gray"},{text:"\u2588\u2588\u2588\u2588\u2588",color:"yellow"},{text:"\u2588\u2588\u2588\u2588",color:"gold"},{text:"\u2591\u2591\u2591\u2591\u2591\u2591",color:"dark_gray"}]
execute if score @s ec.cf_heat matches 71..80 at @s run data modify entity @e[type=text_display,tag=CF.HeatBar,distance=..7,limit=1] text set value [{text:"\u2588\u2588\u2588\u2588\u2588",color:"gray"},{text:"\u2588\u2588\u2588\u2588\u2588",color:"yellow"},{text:"\u2588\u2588\u2588\u2588",color:"gold"},{text:"\u2588\u2588",color:"white",bold:true},{text:"\u2591\u2591\u2591\u2591",color:"dark_gray"}]
execute if score @s ec.cf_heat matches 81..85 at @s run data modify entity @e[type=text_display,tag=CF.HeatBar,distance=..7,limit=1] text set value [{text:"\u2588\u2588\u2588\u2588\u2588",color:"gray"},{text:"\u2588\u2588\u2588\u2588\u2588",color:"yellow"},{text:"\u2588\u2588\u2588\u2588",color:"gold"},{text:"\u2588\u2588\u2588",color:"white",bold:true},{text:"\u2591\u2591\u2591",color:"dark_gray"}]
execute if score @s ec.cf_heat matches 86..95 at @s run data modify entity @e[type=text_display,tag=CF.HeatBar,distance=..7,limit=1] text set value [{text:"\u2588\u2588\u2588\u2588\u2588",color:"gray"},{text:"\u2588\u2588\u2588\u2588\u2588",color:"yellow"},{text:"\u2588\u2588\u2588\u2588",color:"gold"},{text:"\u2588\u2588\u2588",color:"white"},{text:"\u2588\u2588",color:"red"},{text:"\u2591",color:"dark_gray"}]
execute if score @s ec.cf_heat matches 96.. at @s run data modify entity @e[type=text_display,tag=CF.HeatBar,distance=..7,limit=1] text set value [{text:"\u2588\u2588\u2588\u2588\u2588",color:"gray"},{text:"\u2588\u2588\u2588\u2588\u2588",color:"yellow"},{text:"\u2588\u2588\u2588\u2588",color:"gold"},{text:"\u2588\u2588\u2588",color:"white"},{text:"\u2588\u2588\u2588",color:"red"}]

# Fire sound at key points
execute if score @s ec.cf_heat matches 50 run playsound minecraft:block.furnace.fire_crackle master @s ~ ~ ~ 0.5 1.2
execute if score @s ec.cf_heat matches 70 run playsound minecraft:block.furnace.fire_crackle master @s ~ ~ ~ 0.7 0.8

# Check for Heat Ready click
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute as @e[type=interaction,tag=CF.HeatReadyBtn,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:craftforever/forging/minigame/phase1_heat/on_click
