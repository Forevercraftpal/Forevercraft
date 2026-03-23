# Lore Exchange — Open GUI (page 5 within lore section)
# Run as: player with codex open, at player
# Clears page 1 content, spawns exchange panel

# Clear dimension picker content
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.LoreDimPick,distance=..5]

# Set page to 5 (exchange)
scoreboard players set @s adv.gui_page 5

# Reset exchange state
scoreboard players set @s lx.count 0
scoreboard players set @s lx.tier 0
scoreboard players set @s lx.required 0
scoreboard players set @s lx.reward 0

# === INFO LINE ===
execute rotated ~ 0 positioned ^ ^2.65 ^2.28 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreExContent"], billboard:"center", text:{text:"Exchange duplicate lore pieces for Lore Shards.",color:"gray"}, background:0,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]} }

# === HELP BUTTON (?) ===
execute rotated ~ 0 positioned ^ ^2.49 ^2.28 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreExContent"], billboard:"center", text:[{text:"[ ",color:"dark_gray"},{text:"?",color:"aqua",bold:true},{text:" ]",color:"dark_gray"}], background:1,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.324f,0.324f,0.324f]} }
execute rotated ~ 0 positioned ^ ^2.41 ^2.3 run summon interaction ~ ~ ~ { Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreExContent","Adv.LoreExHelpBtn"], width:0.3f,height:0.10f,response:1b }

# === STATUS LINE (refreshable) ===
execute rotated ~ 0 positioned ^ ^2.25 ^2.28 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreExContent","Adv.LoreExStatus"], billboard:"center", text:{text:"Hold a lore piece and click [Deposit] below.",color:"dark_gray"}, background:0,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.30f,0.30f,0.30f]} }

# === RESULT LINE (refreshable — shows shard output) ===
execute rotated ~ 0 positioned ^ ^2.05 ^2.28 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreExContent","Adv.LoreExResult"], billboard:"center", text:{text:"",color:"gray"}, background:0,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.30f,0.30f,0.30f]} }

# === DEPOSIT BUTTON ===
execute rotated ~ 0 positioned ^ ^1.75 ^2.28 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreExContent","Adv.LoreExDepositTxt"], billboard:"center", text:[{text:"[ ",color:"dark_gray"},{text:"Deposit Held Piece",color:"yellow",bold:true},{text:" ]",color:"dark_gray"}], background:1,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.432f,0.432f,0.432f]} }
execute rotated ~ 0 positioned ^ ^1.65 ^2.3 run summon interaction ~ ~ ~ { Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreExContent","Adv.LoreExDepositBtn"], width:0.7f,height:0.12f,response:1b }

# === EXCHANGE BUTTON ===
execute rotated ~ 0 positioned ^0.50 ^1.5 ^2.28 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreExContent","Adv.LoreExExchangeTxt"], billboard:"center", text:[{text:"[ ",color:"dark_gray"},{text:"Exchange!",color:"dark_gray"},{text:" ]",color:"dark_gray"}], background:1,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.432f,0.432f,0.432f]} }
execute rotated ~ 0 positioned ^ ^1.4 ^2.3 positioned ^0.50 ^0 ^0 run summon interaction ~ ~ ~ { Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreExContent","Adv.LoreExExchangeBtn"], width:0.5f,height:0.12f,response:1b }

# === BACK BUTTON ===
execute rotated ~ 0 positioned ^-0.50 ^1.5 ^2.28 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreExContent","Adv.LoreExBackTxt"], billboard:"center", text:[{text:"[ ",color:"dark_gray"},{text:"\u2190 Back",color:"gray",bold:true},{text:" ]",color:"dark_gray"}], background:1,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]} }
execute rotated ~ 0 positioned ^ ^1.4 ^2.3 positioned ^-0.50 ^0 ^0 run summon interaction ~ ~ ~ { Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreExContent","Adv.LoreExBackBtn"], width:0.4f,height:0.12f,response:1b }

# Stamp session ID on new entities
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[tag=Adv.LoreExContent,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp

# Sound
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 0.3 1.4
