# ============================================================
# Journal Display — Bonuses Page
# Shows active permanent region bonuses
# ============================================================

tellraw @s ""
tellraw @s [{text:"═══ ",color:"gold"},{text:"REGION BONUSES",color:"gold",bold:true},{text:" ═══",color:"gold"}]
tellraw @s ""

# Track if any bonuses are active
scoreboard players set #jn_any jn.temp 0

# OW Surface bonus
execute if score @s jn.region_ow matches 1 run scoreboard players set #jn_any jn.temp 1
execute if score @s jn.region_ow matches 1 run tellraw @s [{text:"  ◆ ",color:"gold"},{text:"Overworld Surface",color:"green"}]
execute if score @s jn.region_ow matches 1 run tellraw @s [{text:"    +10% Movement Speed",color:"aqua"}]
execute if score @s jn.region_ow matches 1 run tellraw @s [{text:"    +1.0 Dream Rate",color:"light_purple"}]
execute if score @s jn.region_ow matches 1 run tellraw @s ""

# OW Caves bonus
execute if score @s jn.region_cave matches 1 run scoreboard players set #jn_any jn.temp 1
execute if score @s jn.region_cave matches 1 run tellraw @s [{text:"  ◆ ",color:"gold"},{text:"Overworld Caves",color:"dark_gray"}]
execute if score @s jn.region_cave matches 1 run tellraw @s [{text:"    +1.0 Dream Rate",color:"light_purple"}]
execute if score @s jn.region_cave matches 1 run tellraw @s ""

# Nether bonus
execute if score @s jn.region_neth matches 1 run scoreboard players set #jn_any jn.temp 1
execute if score @s jn.region_neth matches 1 run tellraw @s [{text:"  ◆ ",color:"gold"},{text:"Nether",color:"red"}]
execute if score @s jn.region_neth matches 1 run tellraw @s [{text:"    +1.0 Dream Rate",color:"light_purple"}]
execute if score @s jn.region_neth matches 1 run tellraw @s ""

# End bonus
execute if score @s jn.region_end matches 1 run scoreboard players set #jn_any jn.temp 1
execute if score @s jn.region_end matches 1 run tellraw @s [{text:"  ◆ ",color:"gold"},{text:"The End",color:"dark_purple"}]
execute if score @s jn.region_end matches 1 run tellraw @s [{text:"    +2.0 Dream Rate",color:"light_purple"}]
execute if score @s jn.region_end matches 1 run tellraw @s ""

# No bonuses yet
execute if score #jn_any jn.temp matches 0 run tellraw @s [{text:"  No region bonuses unlocked yet.",color:"gray"}]
execute if score #jn_any jn.temp matches 0 run tellraw @s [{text:"  Complete regions to earn permanent bonuses!",color:"gray"}]
execute if score #jn_any jn.temp matches 0 run tellraw @s ""

# Max bonus summary
execute if score #jn_any jn.temp matches 1 run tellraw @s [{text:"  Maximum possible: ",color:"gray"},{text:"+10% Speed, +5.0 DR",color:"yellow"}]

tellraw @s ""
tellraw @s [{text:"  ",color:"gray"},{text:"[Back to Journal]",color:"aqua",click_event:{action:run_command,command:"/trigger jn.view set 1"},hover_event:{action:show_text,value:"Return to overview"}}]
tellraw @s [{text:"═══════════════════════════",color:"gold"}]

playsound minecraft:item.book.page_turn player @s ~ ~ ~ 0.5 1.0
