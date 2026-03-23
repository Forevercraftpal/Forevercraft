# Resonance Strike — Render bar to actionbar
# Args: pos (cursor 0-19), zone (sweet spot center)
# Run as player
#
# We use conditional score checks instead of full macro rendering
# because building a 20-char string dynamically isn't feasible in mcfunction.
# Instead, show the cursor position as a number hint + zone highlight.

# The bar is rendered by the tick's score-based conditional actionbar below.
# This macro just stores values for the conditional rendering.
$scoreboard players set #cf_r_pos ec.temp $(pos)
$scoreboard players set #cf_r_zone ec.temp $(zone)

# Calculate distance from zone center
scoreboard players operation #cf_r_dist ec.temp = #cf_r_pos ec.temp
scoreboard players operation #cf_r_dist ec.temp -= #cf_r_zone ec.temp
execute if score #cf_r_dist ec.temp matches ..-1 run scoreboard players operation #cf_r_dist ec.temp *= #-1 ec.const

# Render based on distance: green when close, yellow when medium, red when far
execute if score #cf_r_dist ec.temp matches ..1 run title @s actionbar [{text:"\u2726 RESONANCE \u2726  ",color:"gold"},{text:"\u25cf",color:"#4CAF50",bold:true},{text:" Perfect! Strike now!",color:"green"}]
execute if score #cf_r_dist ec.temp matches 2..3 run title @s actionbar [{text:"\u2726 RESONANCE \u2726  ",color:"gold"},{text:"\u25cf",color:"yellow"},{text:" Close... ",color:"yellow"}]
execute if score #cf_r_dist ec.temp matches 4..6 run title @s actionbar [{text:"\u2726 RESONANCE \u2726  ",color:"gold"},{text:"\u25cb",color:"gray"},{text:" Sweeping...",color:"gray"}]
execute if score #cf_r_dist ec.temp matches 7.. run title @s actionbar [{text:"\u2726 RESONANCE \u2726  ",color:"gold"},{text:"\u25cb",color:"dark_gray"},{text:" Sweeping...",color:"dark_gray"}]
