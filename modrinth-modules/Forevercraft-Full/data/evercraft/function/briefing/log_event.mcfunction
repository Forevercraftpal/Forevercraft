# Briefing — Log an event for "While You Were Away"
# Macro args: $(msg) — event description text
# Appends to evercraft:briefing events[] and trims to 50

# Append event with current day
$data modify storage evercraft:briefing events append value {msg:"$(msg)",day:0}
execute store result storage evercraft:briefing events[-1].day int 1 run time query day

# Trim: remove oldest if over 50 entries
scoreboard players add #brief_count ec.var 1
execute if score #brief_count ec.var matches 51.. run data remove storage evercraft:briefing events[0]
execute if score #brief_count ec.var matches 51.. run scoreboard players remove #brief_count ec.var 1
