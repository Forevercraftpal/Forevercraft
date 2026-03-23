# Calendar — Deterministic Fallback Pick
# Walks 1→2→3→4→5→6→7, picks first valid (not in last1/last2)
# Sets #cal_pick and #cal_pick_ok on cal.temp

# Try 1
scoreboard players set #cal_pick cal.temp 1
execute unless score #cal_pick cal.temp = #cal_last1 ec.var unless score #cal_pick cal.temp = #cal_last2 ec.var run scoreboard players set #cal_pick_ok cal.temp 1
execute if score #cal_pick_ok cal.temp matches 1 run return 0

# Try 2
scoreboard players set #cal_pick cal.temp 2
execute unless score #cal_pick cal.temp = #cal_last1 ec.var unless score #cal_pick cal.temp = #cal_last2 ec.var run scoreboard players set #cal_pick_ok cal.temp 1
execute if score #cal_pick_ok cal.temp matches 1 run return 0

# Try 3
scoreboard players set #cal_pick cal.temp 3
execute unless score #cal_pick cal.temp = #cal_last1 ec.var unless score #cal_pick cal.temp = #cal_last2 ec.var run scoreboard players set #cal_pick_ok cal.temp 1
execute if score #cal_pick_ok cal.temp matches 1 run return 0

# Try 4
scoreboard players set #cal_pick cal.temp 4
execute unless score #cal_pick cal.temp = #cal_last1 ec.var unless score #cal_pick cal.temp = #cal_last2 ec.var run scoreboard players set #cal_pick_ok cal.temp 1
execute if score #cal_pick_ok cal.temp matches 1 run return 0

# Try 5
scoreboard players set #cal_pick cal.temp 5
execute unless score #cal_pick cal.temp = #cal_last1 ec.var unless score #cal_pick cal.temp = #cal_last2 ec.var run scoreboard players set #cal_pick_ok cal.temp 1
execute if score #cal_pick_ok cal.temp matches 1 run return 0

# Try 6
scoreboard players set #cal_pick cal.temp 6
execute unless score #cal_pick cal.temp = #cal_last1 ec.var unless score #cal_pick cal.temp = #cal_last2 ec.var run scoreboard players set #cal_pick_ok cal.temp 1
execute if score #cal_pick_ok cal.temp matches 1 run return 0

# Try 7
scoreboard players set #cal_pick cal.temp 7
execute unless score #cal_pick cal.temp = #cal_last1 ec.var unless score #cal_pick cal.temp = #cal_last2 ec.var run scoreboard players set #cal_pick_ok cal.temp 1
execute if score #cal_pick_ok cal.temp matches 1 run return 0

# Try 8 (guaranteed valid — at most 2 excluded from 8 options)
scoreboard players set #cal_pick cal.temp 8
scoreboard players set #cal_pick_ok cal.temp 1
