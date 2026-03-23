# Duel Invite — Receive (runs as target player, @s = target)
# Called from initiate when a valid target is found

# Block if target already has a pending invite
execute if score @s ec.duel_inv matches 1 run return 0

# Block if target is at daily limit
execute store result score #current_day ec.temp run time query day
execute unless score @s ec.duel_last_day = #current_day ec.temp run scoreboard players set @s ec.duel_today 0
scoreboard players operation @s ec.duel_last_day = #current_day ec.temp
execute if score @s ec.duel_today matches 3.. run return 0

# Mark invite state
scoreboard players set @s ec.duel_inv 1
scoreboard players set @s ec.duel_inv_cd 1200
tag @s add duel.pending_target

# Store challenger's UUID by tagging them
# The challenger already has duel.challenger tag

# Tell challenger their invite was sent
execute as @a[tag=duel.challenger] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Duel invitation sent to ",color:"yellow"},{selector:"@a[tag=duel.pending_target]",color:"aqua"},{text:"!",color:"yellow"}]

# Send invite to target with clickable options
tellraw @s [{text:"",color:"white"},{text:"━━━━━━━━━━━━━━━━━━━━━━━━━━━━",color:"dark_gray",strikethrough:true}]
tellraw @s [{text:"  ⚔ ",color:"gold"},{selector:"@a[tag=duel.challenger]",color:"aqua",bold:true},{text:" challenges you to a duel!",color:"yellow"}]
tellraw @s [{text:""}]
tellraw @s [{text:"  "},{text:"[Open World]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger ec.duel set 1"},hover_event:{action:"show_text",value:{text:"Fight where you stand — 64 block boundary",color:"gray"}}},{text:"  "},{text:"[Arena]",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.duel set 2"},hover_event:{action:"show_text",value:{text:"Teleport to a gladiator arena — spectators welcome!",color:"gray"}}},{text:"  "},{text:"[Team 2v2]",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.duel set 4"},hover_event:{action:"show_text",value:{text:"2v2 arena battle — pick partners",color:"gray"}}}]
tellraw @s [{text:"  "},{text:"[Class Duel]",color:"light_purple",click_event:{action:"run_command",command:"/trigger ec.duel set 5"},hover_event:{action:"show_text",value:{text:"Both fighters use same weapon class",color:"gray"}}},{text:"  "},{text:"[First to 3]",color:"red",click_event:{action:"run_command",command:"/trigger ec.duel set 6"},hover_event:{action:"show_text",value:{text:"Multi-round — first to 3 kills wins",color:"gray"}}},{text:"  "},{text:"[First to 5]",color:"dark_red",click_event:{action:"run_command",command:"/trigger ec.duel set 7"},hover_event:{action:"show_text",value:{text:"Multi-round — first to 5 kills wins",color:"gray"}}}]
tellraw @s [{text:"  "},{text:"[Decline]",color:"red",click_event:{action:"run_command",command:"/trigger ec.duel set -1"},hover_event:{action:"show_text",value:{text:"Decline the duel",color:"gray"}}}]
tellraw @s [{text:"  Expires in 60 seconds",color:"dark_gray",italic:true}]
tellraw @s [{text:"━━━━━━━━━━━━━━━━━━━━━━━━━━━━",color:"dark_gray",strikethrough:true}]

# Play sound to target
playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1.5
