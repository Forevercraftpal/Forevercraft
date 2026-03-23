# Party Menu — Leader display (macro)
# Arg: size (party size)

$tellraw @s [{text:"",color:"gold"},{text:"═══ ",color:"dark_gray"},{text:"Party [$(size)/4]",bold:true},{text:" ═══",color:"dark_gray"},{text:" (Leader)",color:"yellow"}]
tellraw @s [{text:"  "},{"text":"[Invite Nearby]","color":"green","bold":true,"click_event":{"action":"run_command","command":"/trigger ec.party set 3"},"hover_event":{"action":"show_text","value":"Invite players within 24 blocks"}}]
tellraw @s [{text:"  "},{"text":"[Party Ping]","color":"aqua","click_event":{"action":"run_command","command":"/trigger ec.party set 5"},"hover_event":{"action":"show_text","value":"Ping your location to party members"}}]
tellraw @s [{text:"  "},{"text":"[Disband]","color":"red","click_event":{"action":"run_command","command":"/trigger ec.party set 4"},"hover_event":{"action":"show_text","value":"Dissolve the party"}}]
