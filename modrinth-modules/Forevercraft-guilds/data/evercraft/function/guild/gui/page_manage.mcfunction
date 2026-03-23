# Guild GUI — Management Page (Administrator+ only)
# @s = player viewing management

# Validate rank
execute unless score @s ec.guild_rank matches 5.. run tellraw @s [{text:"[Guild] ",color:"green"},{text:"You need Administrator rank or higher for management!",color:"red"}]
execute unless score @s ec.guild_rank matches 5.. run return 0

tellraw @s [{text:"━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━",color:"dark_gray"}]
tellraw @s [{text:" Guild Management",color:"green",bold:true}]
tellraw @s [{text:"━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━",color:"dark_gray"}]

# Invite mode (look at player + click)
tellraw @s [{text:"  "},{text:"[Invite Player]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger ec.guild_menu set 5"},hover_event:{action:"show_text",value:{text:"Enter invite mode — look at a player within 8 blocks",color:"green"}}}]

# Vote to kick (Administrator+)
tellraw @s [{text:"  "},{text:"[Vote to Kick]",color:"red",click_event:{action:"run_command",command:"/trigger ec.guild_menu set 6"},hover_event:{action:"show_text",value:{text:"Start a majority vote to kick a member",color:"red"}}}]

# Leave guild
tellraw @s [{text:"  "},{text:"[Leave Guild]",color:"gray",click_event:{action:"run_command",command:"/trigger ec.guild_menu set 7"},hover_event:{action:"show_text",value:{text:"Leave this guild",color:"gray"}}}]

# Disband (Valorous only)
execute if score @s ec.guild_rank matches 7 run tellraw @s [{text:"  "},{text:"[Disband Guild]",color:"dark_red",bold:true,click_event:{action:"run_command",command:"/trigger ec.guild_menu set 8"},hover_event:{action:"show_text",value:{text:"WARNING: Permanently disband the guild!",color:"dark_red"}}}]
