# Briefing — Recursive event scanner
# Pops events from temp_events[0], shows if day > ec.last_day
# Stops after 5 shown or list empty
# Run as: the joining player

# Check if any events remain
execute unless data storage evercraft:briefing temp_events[0] run return 0

# Read the day of the first entry
execute store result score #evt_day ec.temp run data get storage evercraft:briefing temp_events[0].day

# If this event happened after player's last day, show it
execute if score #evt_day ec.temp > @s ec.last_day run tellraw @s [{text:"  "},{text:"• ",color:"gold"},{nbt:"temp_events[0].msg",storage:"evercraft:briefing",color:"yellow"},{text:" (Day ",color:"dark_gray"},{score:{name:"#evt_day",objective:"ec.temp"},color:"gray"},{text:")",color:"dark_gray"}]
execute if score #evt_day ec.temp > @s ec.last_day run scoreboard players add #brief_shown ec.temp 1

# Remove this entry and continue scanning (up to 5 shown)
data remove storage evercraft:briefing temp_events[0]
execute if score #brief_shown ec.temp matches ..4 if data storage evercraft:briefing temp_events[0] run function evercraft:briefing/scan_events
