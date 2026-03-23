# Prestige Ability Class Selector — Codex-style chat menu
# Each class is clickable via /trigger adv.treeinfo

tellraw @s {text:""}
tellraw @s [{text:"✦ PRESTIGE ABILITIES ✦",color:"light_purple",bold:true}]
tellraw @s [{text:"  Select a class to view its prestige abilities:",color:"gray"}]
tellraw @s {text:""}

# Adventure trees
tellraw @s [{text:"  "},{text:"[Agility]",color:"aqua",bold:true,click_event:{action:"run_command",command:"/trigger adv.treeinfo set 1"},hover_event:{action:"show_text",value:"Sprint Persist, Double Jump, Dash"}}]
tellraw @s [{text:"  "},{text:"[Dexterity]",color:"yellow",bold:true,click_event:{action:"run_command",command:"/trigger adv.treeinfo set 2"},hover_event:{action:"show_text",value:"Quick Draw, Dual Wield, Extended Reach"}}]
tellraw @s [{text:"  "},{text:"[Evasion]",color:"white",bold:true,click_event:{action:"run_command",command:"/trigger adv.treeinfo set 3"},hover_event:{action:"show_text",value:"Shadow Counter, Vanishing Dodge, Perfect Evasion"}}]
tellraw @s [{text:"  "},{text:"[Stealth]",color:"dark_gray",bold:true,click_event:{action:"run_command",command:"/trigger adv.treeinfo set 4"},hover_event:{action:"show_text",value:"Shadow Cloak, Backstab, Perfect Stealth"}}]
tellraw @s [{text:"  "},{text:"[Vitality]",color:"red",bold:true,click_event:{action:"run_command",command:"/trigger adv.treeinfo set 5"},hover_event:{action:"show_text",value:"Vital Regen, Death Save, Iron Will"}}]

# Progression trees
tellraw @s [{text:"  "},{text:"[Taskmaster]",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger adv.treeinfo set 6"},hover_event:{action:"show_text",value:"Quest Mastery, Diplomat, Guild Master"}}]
tellraw @s [{text:"  "},{text:"[Beastmaster]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger adv.treeinfo set 7"},hover_event:{action:"show_text",value:"Alpha Bond, Pack Tactics, Pack Leader"}}]
tellraw @s [{text:"  "},{text:"[Victorian]",color:"dark_red",bold:true,click_event:{action:"run_command",command:"/trigger adv.treeinfo set 8"},hover_event:{action:"show_text",value:"XP Siphon, Critical Loot, Trophy Hunter"}}]
tellraw @s [{text:"  "},{text:"[Culinary]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger adv.treeinfo set 14"},hover_event:{action:"show_text",value:"Hearty Harvest, Double Portion, Master Chef"}}]

# Gathering trees
tellraw @s [{text:"  "},{text:"[Fishing]",color:"blue",bold:true,click_event:{action:"run_command",command:"/trigger adv.treeinfo set 9"},hover_event:{action:"show_text",value:"Water Net, Second Net, Master Angler"}}]
tellraw @s [{text:"  "},{text:"[Mining]",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger adv.treeinfo set 10"},hover_event:{action:"show_text",value:"Ore Magnet, Ore Doubling, Ancient Ore"}}]
tellraw @s [{text:"  "},{text:"[Gathering]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger adv.treeinfo set 11"},hover_event:{action:"show_text",value:"Green Thumb, Fertile Aura, Harvest Lord"}}]
tellraw @s [{text:"  "},{text:"[Blacksmith]",color:"gray",bold:true,click_event:{action:"run_command",command:"/trigger adv.treeinfo set 12"},hover_event:{action:"show_text",value:"Master Alloy, Efficient Fuel, Auto-Smelt"}}]
tellraw @s [{text:"  "},{text:"[Explorer]",color:"dark_aqua",bold:true,click_event:{action:"run_command",command:"/trigger adv.treeinfo set 13"},hover_event:{action:"show_text",value:"Structure Sense, Cartographer, Wayfinder"}}]
tellraw @s {text:""}
