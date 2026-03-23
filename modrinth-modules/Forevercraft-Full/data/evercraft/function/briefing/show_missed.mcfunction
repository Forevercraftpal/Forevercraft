# Briefing — Show missed events from event log
# Displays events that happened while the player was away
# Run as: the joining player

# Compute days away
execute store result score #today ec.temp run time query day
scoreboard players operation #days_away ec.temp = #today ec.temp
scoreboard players operation #days_away ec.temp -= @s ec.last_day

# Skip section entirely if not away (0 days or first join)
execute if score #days_away ec.temp matches ..0 run return 0
execute unless score @s ec.last_day matches 0.. run return 0

# === WHILE YOU WERE AWAY ===
tellraw @s {text:""}
tellraw @s [{text:"While You Were Away",color:"gold",bold:true},{text:" (",color:"gray"},{score:{name:"#days_away",objective:"ec.temp"},color:"white"},{text:" day(s))",color:"gray"}]

# Copy events to temp list for scanning
data modify storage evercraft:briefing temp_events set from storage evercraft:briefing events
scoreboard players set #brief_shown ec.temp 0

# Scan events
function evercraft:briefing/scan_events

# If nothing to show
execute if score #brief_shown ec.temp matches 0 run tellraw @s [{text:"  "},{text:"All quiet while you were gone.",color:"dark_gray",italic:true}]
