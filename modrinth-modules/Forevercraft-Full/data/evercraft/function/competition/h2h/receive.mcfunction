# H2H Competition — Receive Invite (runs as target)
# Challenger has h2h.challenger tag

# Block if target is in restricted state
execute if entity @s[tag=h2h.participant] run return 0
execute if entity @s[tag=ec.duel_active_tag] run return 0
execute if entity @s[tag=dr.in_realm] run return 0
execute if entity @s[tag=dg.player] run return 0

# Mark invite state
scoreboard players set @s ec.h2h_inv 1
scoreboard players set @s ec.h2h_inv_cd 1200
tag @s add h2h.pending_target

# Enable trigger for target
scoreboard players enable @s ec.h2h

# Notify challenger
execute as @a[tag=h2h.challenger] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Competition challenge sent to ",color:"yellow"},{selector:"@a[tag=h2h.pending_target]",color:"aqua"},{text:"!",color:"yellow"}]

# Send invite to target with 6 competition types
tellraw @s [{text:"━━━━━━━━━━━━━━━━━━━━━━━━━━━━",color:"dark_gray",strikethrough:true}]
tellraw @s [{text:"  ★ ",color:"gold"},{selector:"@a[tag=h2h.challenger]",color:"aqua",bold:true},{text:" challenges you to a competition!",color:"yellow"}]
tellraw @s [{text:"  Pick a type (2.5 min head-to-head):",color:"gray"}]
tellraw @s [{text:"  "},{text:"[Cooking]",color:"yellow",bold:true,click_event:{action:"run_command",command:"/trigger ec.h2h set 1"},hover_event:{action:"show_text",value:{text:"Cook the most items!",color:"gray"}}},{text:"  "},{text:"[Mining]",color:"aqua",bold:true,click_event:{action:"run_command",command:"/trigger ec.h2h set 2"},hover_event:{action:"show_text",value:{text:"Mine the most blocks!",color:"gray"}}},{text:"  "},{text:"[Forging]",color:"white",bold:true,click_event:{action:"run_command",command:"/trigger ec.h2h set 3"},hover_event:{action:"show_text",value:{text:"Craft the most gear!",color:"gray"}}}]
tellraw @s [{text:"  "},{text:"[Prospecting]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger ec.h2h set 4"},hover_event:{action:"show_text",value:{text:"Find the most ores!",color:"gray"}}},{text:"  "},{text:"[Foraging]",color:"dark_green",bold:true,click_event:{action:"run_command",command:"/trigger ec.h2h set 5"},hover_event:{action:"show_text",value:{text:"Gather the most plants!",color:"gray"}}},{text:"  "},{text:"[Fishing]",color:"blue",bold:true,click_event:{action:"run_command",command:"/trigger ec.h2h set 6"},hover_event:{action:"show_text",value:{text:"Catch the most fish!",color:"gray"}}}]
tellraw @s [{text:"  "},{text:"[Decline]",color:"red",click_event:{action:"run_command",command:"/trigger ec.h2h set -1"},hover_event:{action:"show_text",value:{text:"Decline the challenge",color:"gray"}}}]
tellraw @s [{text:"  Expires in 60 seconds",color:"dark_gray",italic:true}]
tellraw @s [{text:"━━━━━━━━━━━━━━━━━━━━━━━━━━━━",color:"dark_gray",strikethrough:true}]

# Sound
playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1.5
