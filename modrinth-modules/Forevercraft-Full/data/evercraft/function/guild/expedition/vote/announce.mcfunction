# Guild Expedition — Announce Vote (macro)
# Args: name_1, name_2, name_3, guild_id

$tellraw @a[scores={ec.guild_id=$(guild_id)}] [{text:"",color:"dark_purple"},{text:"━━━━━━━━━━━━━━━━━━━━━━━━━━━━",color:"dark_gray",bold:true}]
$tellraw @a[scores={ec.guild_id=$(guild_id)}] [{text:"[Guild] ",color:"green"},{text:"Expedition Vote! ",color:"gold",bold:true},{text:"Pick a biome to explore:",color:"yellow"}]
$tellraw @a[scores={ec.guild_id=$(guild_id)}] [{text:"  "},{text:"[1] $(name_1)",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger ec.gexp_vote set 1"},hover_event:{action:"show_text",value:{text:"Vote for $(name_1)",color:"green"}}}]
$tellraw @a[scores={ec.guild_id=$(guild_id)}] [{text:"  "},{text:"[2] $(name_2)",color:"aqua",bold:true,click_event:{action:"run_command",command:"/trigger ec.gexp_vote set 2"},hover_event:{action:"show_text",value:{text:"Vote for $(name_2)",color:"aqua"}}}]
$tellraw @a[scores={ec.guild_id=$(guild_id)}] [{text:"  "},{text:"[3] $(name_3)",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.gexp_vote set 3"},hover_event:{action:"show_text",value:{text:"Vote for $(name_3)",color:"light_purple"}}}]
$tellraw @a[scores={ec.guild_id=$(guild_id)}] [{text:"[Guild] ",color:"green"},{text:"Vote ends in 60 seconds!",color:"gray"}]
$tellraw @a[scores={ec.guild_id=$(guild_id)}] [{text:"━━━━━━━━━━━━━━━━━━━━━━━━━━━━",color:"dark_gray",bold:true}]
$playsound minecraft:block.note_block.chime master @a[scores={ec.guild_id=$(guild_id)}] ~ ~ ~ 1.0 1.0
