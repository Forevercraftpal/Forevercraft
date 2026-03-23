# Team Duel — Receive (runs as opponent)
# Opponent must pick their partner and confirm

# Block if target already has a pending invite
execute if score @s ec.duel_inv matches 1 run return 0

# Mark invite state
scoreboard players set @s ec.duel_inv 1
scoreboard players set @s ec.duel_inv_cd 1200
tag @s add duel.pending_target

# Send invite
tellraw @s [{text:"",color:"dark_gray",strikethrough:true,extra:[{text:"                                        ",strikethrough:true}]}]
tellraw @s [{text:"  ",color:"gold"},{selector:"@a[tag=duel.team_challenger]",color:"aqua",bold:true},{text:" and ",color:"yellow"},{selector:"@a[tag=duel.partner_a]",color:"aqua"},{text:" challenge you to a ",color:"yellow"},{text:"Team Duel (2v2)",color:"gold",bold:true},{text:"!",color:"yellow"}]
tellraw @s [{text:""}]
tellraw @s [{text:"  Pick your partner, then accept!",color:"gray"}]
tellraw @s [{text:"  "},{text:"[Accept Team Duel]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger ec.duel set 4"},hover_event:{action:"show_text",value:{text:"Accept and pick your partner",color:"gray"}}},{text:"  "},{text:"[Decline]",color:"red",click_event:{action:"run_command",command:"/trigger ec.duel set -1"},hover_event:{action:"show_text",value:{text:"Decline the duel",color:"gray"}}}]
tellraw @s [{text:"  Expires in 60 seconds",color:"dark_gray",italic:true}]
tellraw @s [{text:"",color:"dark_gray",strikethrough:true,extra:[{text:"                                        ",strikethrough:true}]}]

# Notify challenger
tellraw @a[tag=duel.team_challenger] [{text:"[Forevercraft] ",color:"gold"},{text:"Team duel invitation sent to ",color:"yellow"},{selector:"@s",color:"aqua"},{text:"!",color:"yellow"}]

playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1.5
