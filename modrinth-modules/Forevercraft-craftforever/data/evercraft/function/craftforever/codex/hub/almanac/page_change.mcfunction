# Almanac — Apply page change (macro)
# Run as the player
# Arg: dir (-1 or 1)
# Uses ec.cf_alm_pg for internal almanac pagination (avoids conflicting with section page)

$scoreboard players add @s ec.cf_alm_pg $(dir)

# Clamp page to 1-3
execute if score @s ec.cf_alm_pg matches ..0 run scoreboard players set @s ec.cf_alm_pg 1
execute if score @s ec.cf_alm_pg matches 4.. run scoreboard players set @s ec.cf_alm_pg 3

# Refresh entries based on new page
function evercraft:craftforever/codex/hub/almanac/refresh

# Update page counter text
execute if score @s ec.cf_alm_pg matches 1 as @e[type=text_display,tag=CF.AlmCounter,distance=..5] run data modify entity @s text set value {text:"Page 1/3",color:"dark_gray"}
execute if score @s ec.cf_alm_pg matches 2 as @e[type=text_display,tag=CF.AlmCounter,distance=..5] run data modify entity @s text set value {text:"Page 2/3",color:"dark_gray"}
execute if score @s ec.cf_alm_pg matches 3 as @e[type=text_display,tag=CF.AlmCounter,distance=..5] run data modify entity @s text set value {text:"Page 3/3",color:"dark_gray"}

# Update arrow colors (gray = at limit, gold = active)
execute if score @s ec.cf_alm_pg matches 1 as @e[type=text_display,tag=CF.AlmPrevText,distance=..5] run data modify entity @s text set value {text:"\u25c0",color:"dark_gray"}
execute if score @s ec.cf_alm_pg matches 2.. as @e[type=text_display,tag=CF.AlmPrevText,distance=..5] run data modify entity @s text set value {text:"\u25c0",color:"gold"}
execute if score @s ec.cf_alm_pg matches ..2 as @e[type=text_display,tag=CF.AlmNextText,distance=..5] run data modify entity @s text set value {text:"\u25b6",color:"gold"}
execute if score @s ec.cf_alm_pg matches 3 as @e[type=text_display,tag=CF.AlmNextText,distance=..5] run data modify entity @s text set value {text:"\u25b6",color:"dark_gray"}

# Set cooldown to prevent held-click rapid-fire (3 ticks)
scoreboard players set @s ec.cf_codex_cd 3

# Play click sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
