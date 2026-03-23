# Pathfinder's Compass - Structure Location Menu
# Check cooldown (72000 ticks = 1 minecraft day)
execute if score @s ec.compass_cooldown matches 1.. run tellraw @s [{text:"The compass needs time to recharge...",color:"red",italic:true},{text:" (",color:"gray"},{score:{name:"@s",objective:"ec.compass_cooldown"}},{text:" ticks remaining)",color:"gray"}]
execute if score @s ec.compass_cooldown matches 1.. run return 0

# Show structure selection menu
tellraw @s ""
tellraw @s {text:"Pathfinder's Compass",color:"gold",bold:true}
tellraw @s ""
tellraw @s [{text:"[Village]",color:"green",click_event:{action:"run_command",command:"/trigger ec.locate set 1"},hover_event:{action:"show_text",value:"Locate nearest Village"}},{text:" "},{text:"[Pillager Outpost]",color:"gray",click_event:{action:"run_command",command:"/trigger ec.locate set 2"},hover_event:{action:"show_text",value:"Locate nearest Pillager Outpost"}}]
tellraw @s [{text:"[Desert Temple]",color:"yellow",click_event:{action:"run_command",command:"/trigger ec.locate set 3"},hover_event:{action:"show_text",value:"Locate nearest Desert Temple"}},{text:" "},{text:"[Jungle Temple]",color:"dark_green",click_event:{action:"run_command",command:"/trigger ec.locate set 4"},hover_event:{action:"show_text",value:"Locate nearest Jungle Temple"}}]
tellraw @s [{text:"[Ocean Monument]",color:"aqua",click_event:{action:"run_command",command:"/trigger ec.locate set 5"},hover_event:{action:"show_text",value:"Locate nearest Ocean Monument"}},{text:" "},{text:"[Shipwreck]",color:"dark_aqua",click_event:{action:"run_command",command:"/trigger ec.locate set 6"},hover_event:{action:"show_text",value:"Locate nearest Shipwreck"}}]
tellraw @s [{text:"[Woodland Mansion]",color:"dark_gray",click_event:{action:"run_command",command:"/trigger ec.locate set 7"},hover_event:{action:"show_text",value:"Locate nearest Woodland Mansion"}},{text:" "},{text:"[Stronghold]",color:"dark_purple",click_event:{action:"run_command",command:"/trigger ec.locate set 8"},hover_event:{action:"show_text",value:"Locate nearest Stronghold"}}]
tellraw @s [{text:"[Nether Fortress]",color:"red",click_event:{action:"run_command",command:"/trigger ec.locate set 9"},hover_event:{action:"show_text",value:"Locate nearest Nether Fortress"}},{text:" "},{text:"[Bastion Remnant]",color:"dark_red",click_event:{action:"run_command",command:"/trigger ec.locate set 10"},hover_event:{action:"show_text",value:"Locate nearest Bastion Remnant"}}]
tellraw @s [{text:"[End City]",color:"light_purple",click_event:{action:"run_command",command:"/trigger ec.locate set 11"},hover_event:{action:"show_text",value:"Locate nearest End City"}},{text:" "},{text:"[Trial Chamber]",color:"blue",click_event:{action:"run_command",command:"/trigger ec.locate set 12"},hover_event:{action:"show_text",value:"Locate nearest Trial Chamber"}}]
# Ancient City - requires 5pc
execute if entity @s[tag=splendid_5pc] run tellraw @s [{text:"[Ancient City]",color:"dark_aqua",bold:true,click_event:{action:"run_command",command:"/trigger ec.locate set 13"},hover_event:{action:"show_text",value:"Locate nearest Ancient City (5pc bonus!)"}}]
execute unless entity @s[tag=splendid_5pc] run tellraw @s [{text:"[Ancient City]",color:"dark_gray",strikethrough:true,hover_event:{action:"show_text",value:"Requires full 5pc Splendid set"}}]
tellraw @s ""
tellraw @s {text:"Note: Move to a different location for new structures!",color:"gray",italic:true}
