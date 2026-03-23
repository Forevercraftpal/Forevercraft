# Party Menu — No Party (not in a group)
# Show create party option

tellraw @s [{text:"",color:"gold"},{text:"═══ ",color:"dark_gray"},{text:"Party System",bold:true},{text:" ═══",color:"dark_gray"}]
tellraw @s [{text:"  "},{"text":"[Create Party]","color":"green","bold":true,"click_event":{"action":"run_command","command":"/trigger ec.party set 2"},"hover_event":{"action":"show_text","value":"Create a new party (you become leader)"}}]
tellraw @s [{text:"  "},{"text":"[Cancel]","color":"gray","click_event":{"action":"run_command","command":"/trigger ec.party set 0"},"hover_event":{"action":"show_text","value":"Close this menu"}}]
