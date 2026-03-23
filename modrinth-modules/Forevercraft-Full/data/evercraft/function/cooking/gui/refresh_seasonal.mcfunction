# ============================================================
# Refresh Seasonal Category Recipes (runs as player)
# 4 recipes per season, slots 4-5 cleared
# Dispatches to per-season refresh based on #season_id
# ============================================================

# Populate recipes for current season
execute if score #season_id ec.var matches 0 run function evercraft:cooking/gui/refresh_autumn
execute if score #season_id ec.var matches 1 run function evercraft:cooking/gui/refresh_winter
execute if score #season_id ec.var matches 2 run function evercraft:cooking/gui/refresh_spring
execute if score #season_id ec.var matches 3 run function evercraft:cooking/gui/refresh_summer

# --- Season info display in slot 4 ---
# Calculate days remaining in current season (16-day seasons)
scoreboard players set #season_days_left ec.temp 16
scoreboard players operation #season_days_left ec.temp -= #season_day ec.var
execute store result storage evercraft:cooking season_days int 1 run scoreboard players get #season_days_left ec.temp

# Set season name + color for macro
execute if score #season_id ec.var matches 0 run data modify storage evercraft:cooking season_name set value "Autumn"
execute if score #season_id ec.var matches 0 run data modify storage evercraft:cooking season_color set value "gold"
execute if score #season_id ec.var matches 1 run data modify storage evercraft:cooking season_name set value "Winter"
execute if score #season_id ec.var matches 1 run data modify storage evercraft:cooking season_color set value "aqua"
execute if score #season_id ec.var matches 2 run data modify storage evercraft:cooking season_name set value "Spring"
execute if score #season_id ec.var matches 2 run data modify storage evercraft:cooking season_color set value "green"
execute if score #season_id ec.var matches 3 run data modify storage evercraft:cooking season_name set value "Summer"
execute if score #season_id ec.var matches 3 run data modify storage evercraft:cooking season_color set value "yellow"

# Display via macro
function evercraft:cooking/gui/season_info_display with storage evercraft:cooking

# Clear slot 4 sub-elements (no ingredients/cook button for info line)
data modify entity @e[type=text_display,tag=CK.Ingr4,distance=..5,limit=1] text set value {"text":""}
data modify entity @e[type=text_display,tag=CK.Cook4Text,distance=..5,limit=1] text set value {"text":""}

# Clear unused slot 5
data modify entity @e[type=text_display,tag=CK.Recipe5,distance=..5,limit=1] text set value {"text":""}
data modify entity @e[type=text_display,tag=CK.Ingr5,distance=..5,limit=1] text set value {"text":""}
data modify entity @e[type=text_display,tag=CK.Cook5Text,distance=..5,limit=1] text set value {"text":""}
