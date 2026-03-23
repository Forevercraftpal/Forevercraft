# Almanac — Update progress bar text_display
# Args: discovered (int count 0-15)

# Build a visual progress bar: filled blocks + empty blocks + count
# 15 positions total
$execute as @e[type=text_display,tag=CF.AlmProgress,distance=..5,limit=1] run data modify entity @s text set value [{"text":"Nodes Discovered: ","color":"gray"},{"text":"$(discovered)","color":"#8BC34A","bold":true},{"text":"/15","color":"gray"},{"text":"  ","color":"gray"},{"text":"\u2503","color":"dark_gray"}]

# Color the progress count based on completion
$execute if score #cf_discovered ec.temp matches 15 as @e[type=text_display,tag=CF.AlmProgress,distance=..5,limit=1] run data modify entity @s text set value [{"text":"\u2726 ","color":"gold"},{"text":"ALL NODES DISCOVERED","color":"gold","bold":true},{"text":" \u2726","color":"gold"}]
