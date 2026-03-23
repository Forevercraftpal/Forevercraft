# Player Stats — Main Display
# Called via /trigger ec.stats
# Shows comprehensive overview of player's Forevercraft statistics

# === MATH PREP ===
# Hours played: ach.adj_play / 72000 (72000 ticks = 1 hour at 20tps)
scoreboard players operation @s ec.temp = @s ach.adj_play
scoreboard players operation @s ec.temp /= #72000 ec.const

# Distance walked in km: ach.adj_walk / 100000
scoreboard players operation @s ec.var = @s ach.adj_walk
scoreboard players operation @s ec.var /= #100000 ec.const

# === HEADER ===
tellraw @s {text:""}
tellraw @s [{text:"  ═══════════════════════════════",color:"#5C4033"}]
tellraw @s [{text:"    ◆ ",color:"#D6D0C7"},{text:"FOREVERCRAFT",bold:true,color:"gold"},{text:" STATS ◆",color:"#D6D0C7"}]
tellraw @s [{text:"  ═══════════════════════════════",color:"#5C4033"}]

# === MOON & SEASON ===
function evercraft:stats/moon_calendar

# === SECTIONS ===
function evercraft:stats/time
function evercraft:stats/combat
function evercraft:stats/gathering
function evercraft:stats/crates
function evercraft:stats/progress
function evercraft:stats/companions
function evercraft:stats/economy

# === FOOTER ===
tellraw @s [{text:"  ═══════════════════════════════",color:"#5C4033"}]
tellraw @s [{text:"    [",color:"dark_gray"},{text:"Dream Rate",color:"light_purple",click_event:{action:"run_command",command:"/trigger ec.dreams set 1"},hover_event:{action:"show_text",value:{text:"View Dream Rate breakdown",color:"gray"}}},{text:"]  ",color:"dark_gray"},{text:"[",color:"dark_gray"},{text:"Achievements",color:"green",click_event:{action:"run_command",command:"/trigger ach.progress set 1"},hover_event:{action:"show_text",value:{text:"View achievement progress",color:"gray"}}},{text:"]",color:"dark_gray"}]
tellraw @s [{text:"    [",color:"dark_gray"},{text:"Dream History",color:"#E0B0FF",click_event:{action:"run_command",command:"/trigger ec.dr_history set 1"},hover_event:{action:"show_text",value:{text:"View all permanent DR events earned",color:"gray"}}},{text:"]",color:"dark_gray"}]
tellraw @s {text:""}

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.2
