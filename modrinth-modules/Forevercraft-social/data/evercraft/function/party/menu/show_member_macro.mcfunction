# Party Menu — Member display (macro)
# Arg: size (party size)

$tellraw @s [{text:"",color:"gold"},{text:"═══ ",color:"dark_gray"},{text:"Party [$(size)/4]",bold:true},{text:" ═══",color:"dark_gray"},{text:" (Member)",color:"gray"}]
tellraw @s [{text:"  "},{"text":"[Party Ping]","color":"aqua","click_event":{"action":"run_command","command":"/trigger ec.party set 5"},"hover_event":{"action":"show_text","value":"Ping your location to party members"}}]
tellraw @s [{text:"  "},{"text":"[Leave Party]","color":"red","click_event":{"action":"run_command","command":"/trigger ec.party set 6"},"hover_event":{"action":"show_text","value":"Leave the party"}}]
