# Display The Forevercraft Codex Main Menu
# Shows clickable rarity tier buttons

# Recalculate artifact count before displaying
function evercraft:codex/build_book

# Header
tellraw @s [{text:"✦ THE FOREVERCRAFT CODEX ✦",color:"gold",bold:true}]
tellraw @s [{text:"  Progress: ",color:"yellow"},{score:{name:"@s",objective:"ec.artifact_count"},color:"aqua",bold:true},{text:"/292 ",color:"aqua",bold:true},{text:"Artifacts",color:"white"}]
tellraw @s ""
tellraw @s [{text:"  Select a rarity tier to browse:",color:"yellow"}]
tellraw @s ""

# Common
tellraw @s [{text:"   "},{text:"[Common]",color:"white",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 10"},hover_event:{action:"show_text",value:"Browse Common artifacts (13)"}}]

# Uncommon
tellraw @s [{text:"   "},{text:"[Uncommon]",color:"blue",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 20"},hover_event:{action:"show_text",value:"Browse Uncommon artifacts (13)"}}]

# Rare
tellraw @s [{text:"   "},{text:"[Rare]",color:"aqua",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 30"},hover_event:{action:"show_text",value:"Browse Rare artifacts (20)"}}]

# Ornate
tellraw @s [{text:"   "},{text:"[Ornate]",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 40"},hover_event:{action:"show_text",value:"Browse Ornate artifacts (109)"}}]

# Exquisite
tellraw @s [{text:"   "},{text:"[Exquisite]",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 50"},hover_event:{action:"show_text",value:"Browse Exquisite artifacts (60)"}}]

# Mythical
tellraw @s [{text:"   "},{text:"[Mythical]",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 60"},hover_event:{action:"show_text",value:"Browse Mythical artifacts (77)"}}]


# Play sound
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1 1.2
