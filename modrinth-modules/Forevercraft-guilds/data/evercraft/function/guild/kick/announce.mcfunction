# Guild Kick — Announce kick vote to guild members
# $(votes_needed) = majority threshold
# Target tagged ec.guild_inv_target
$tellraw @a[scores={ec.guild_kick_cd=1..}] [{text:"[Guild] ",color:"green"},{selector:"@s"},{text:" has started a vote to kick ",color:"gold"},{selector:"@e[tag=ec.guild_inv_target,limit=1]"},{text:"! ",color:"gold"},{text:"$(votes_needed) votes needed.",color:"yellow"},{text:" "},{text:"[YES]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger ec.guild_kick set 1"},hover_event:{action:"show_text",value:{text:"Vote to kick",color:"green"}}},{text:" "},{text:"[NO]",color:"red",bold:true,click_event:{action:"run_command",command:"/trigger ec.guild_kick set 2"},hover_event:{action:"show_text",value:{text:"Vote to keep",color:"red"}}}]
