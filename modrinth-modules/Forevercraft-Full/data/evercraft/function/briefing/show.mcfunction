# Welcome Briefing — Unified join message (replaces old 3-section layout)
# @s = player, at @s context. Dream rate scores already computed by on_join.

# === Announce to other online players (outside the briefing box) ===
tellraw @a[tag=ec.joined] [{text:"✦ ",color:"gold"},{selector:"@s",color:"gold",bold:true},{text:" has joined Forevercraft!",color:"gold"},{text:" ✦",color:"gold"}]

# === Compute display values ===
function evercraft:briefing/get_time_name
function evercraft:briefing/get_moon_name
function evercraft:briefing/get_season_name

# === Personal briefing (joining player only) ===
tellraw @s {text:""}
tellraw @s [{text:"——————————————————————————————————",color:"dark_gray"}]

# Header: join message (multiplayer) or welcome (singleplayer)
execute if entity @a[tag=ec.joined] run tellraw @s [{text:"✦ ",color:"gold"},{selector:"@s",color:"gold",bold:true},{text:" has joined Forevercraft!",color:"gold"},{text:" ✦",color:"gold"}]
execute unless entity @a[tag=ec.joined] run tellraw @s [{text:"✦ ",color:"gold"},{text:"Welcome to Forevercraft!",color:"gold",bold:true},{text:" ✦",color:"gold"}]

# Time · Moon · Season (compact single line)
tellraw @s [{nbt:"time_name",storage:"evercraft:briefing",color:"white"},{text:" (Day ",color:"gray"},{score:{name:"#visual_day",objective:"ec.var"},color:"white"},{text:") · ",color:"gray"},{nbt:"moon_name",storage:"evercraft:briefing",color:"#B8C4E8"},{text:" · ",color:"gray"},{nbt:"season_name",storage:"evercraft:briefing",color:"#DAA520"}]

# Active Events
execute if score #cal_active ec.var matches 1 run function evercraft:briefing/show_cal_event
execute if score #ec_event_active ec.var matches 1 run tellraw @s [{text:"Dream Surge is active!",color:"#C8A2F8",italic:true}]
execute unless score #cal_active ec.var matches 1 unless score #ec_event_active ec.var matches 1 run tellraw @s [{text:"No active events.",color:"dark_gray",italic:true}]

# Dream Rate (clickable — shows full breakdown)
tellraw @s [{text:"✦ ",color:"gold",click_event:{action:run_command,command:"/trigger ec.dreams set 1"},hover_event:{action:show_text,value:{text:"Click to view breakdown",color:"yellow"}}},{text:"The rate of your dreams coming true today is ",color:"gold"},{score:{name:"@s",objective:"ec.var"},color:"gold",bold:true},{text:".",color:"gold",bold:true},{score:{name:"#dec",objective:"ec.temp"},color:"gold",bold:true},{text:" ✦",color:"gold"}]

# While You Were Away (conditional — only if player was away 1+ days)
function evercraft:briefing/show_missed

# Coaching tip for new players (DR < 5.0)
execute if score @s ec.var matches ..4 run function evercraft:briefing/coaching_tip

# Footer
tellraw @s [{text:"——————————————————————————————————",color:"dark_gray"}]
tellraw @s {text:""}
