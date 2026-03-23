# Spawn exchange page elements in front of player (player-relative)
# Runs as @s = player, at @s

# Background panel (taller for more items)
execute rotated ~ 0 positioned ^ ^1.95 ^1.8 run summon item_display ~ ~ ~ {Tags:["ec.FountainMenu","ec.ExchangeElement"],billboard:"center",item:{id:"black_stained_glass_pane",count:1},item_display:"fixed",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.02f],scale:[3.0f,2.8f,0.01f]}}

# Title
execute rotated ~ 0 positioned ^ ^2.85 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.FountainMenu","ec.ExchangeElement"],billboard:"center",text:{text:"\u25C6 Dreamdust Exchange \u25C6",color:"#E0B0FF",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.608f,0.608f,0.608f]}}

# Balance check button
execute rotated ~ 0 positioned ^ ^2.65 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.FountainMenu","ec.ExchangeElement"],billboard:"center",text:{text:"[Check Balance]",color:"#E0B0FF"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute rotated ~ 0 positioned ^ ^2.67 ^1.8 run summon interaction ~ ~ ~ {Tags:["ec.FountainMenu","ec.ExchangeElement","ec.ExBalance"],width:0.21f,height:0.02f,response:1b}

# === 1. Forever Coin — 3 Dreamdust ===
execute rotated ~ 0 positioned ^ ^2.40 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.FountainMenu","ec.ExchangeElement","ec.ExBuy1Label"],billboard:"center",text:[{text:"1 Forever Coin",color:"gold"},{text:" — 3 Dust",color:"gray"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute rotated ~ 0 positioned ^ ^2.42 ^1.8 run summon interaction ~ ~ ~ {Tags:["ec.FountainMenu","ec.ExchangeElement","ec.ExBuy1"],width:0.23f,height:0.02f,response:1b}

# === 2. Companion Treat — 10 Dreamdust ===
execute rotated ~ 0 positioned ^ ^2.20 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.FountainMenu","ec.ExchangeElement","ec.ExBuy2Label"],billboard:"center",text:[{text:"Companion Treat",color:"gold"},{text:" — 10 Dust",color:"gray"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute rotated ~ 0 positioned ^ ^2.22 ^1.8 run summon interaction ~ ~ ~ {Tags:["ec.FountainMenu","ec.ExchangeElement","ec.ExBuy2"],width:0.23f,height:0.02f,response:1b}

# === 3. Awakening Stone — 15 Dreamdust ===
execute rotated ~ 0 positioned ^ ^2.0 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.FountainMenu","ec.ExchangeElement","ec.ExBuy3Label"],billboard:"center",text:[{text:"Awakening Stone",color:"light_purple"},{text:" — 15 Dust",color:"gray"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute rotated ~ 0 positioned ^ ^2.02 ^1.8 run summon interaction ~ ~ ~ {Tags:["ec.FountainMenu","ec.ExchangeElement","ec.ExBuy3"],width:0.23f,height:0.02f,response:1b}

# === 4. Tree Token — 30 Dreamdust ===
execute rotated ~ 0 positioned ^ ^1.80 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.FountainMenu","ec.ExchangeElement","ec.ExBuy4Label"],billboard:"center",text:[{text:"Tree Token",color:"green"},{text:" — 30 Dust",color:"gray"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute rotated ~ 0 positioned ^ ^1.82 ^1.8 run summon interaction ~ ~ ~ {Tags:["ec.FountainMenu","ec.ExchangeElement","ec.ExBuy4"],width:0.23f,height:0.02f,response:1b}

# === 5. Random Particle — 100 Dreamdust ===
execute rotated ~ 0 positioned ^ ^1.60 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.FountainMenu","ec.ExchangeElement","ec.ExBuy5Label"],billboard:"center",text:[{text:"Random Particle",color:"#E0B0FF"},{text:" — 100 Dust",color:"gray"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute rotated ~ 0 positioned ^ ^1.62 ^1.8 run summon interaction ~ ~ ~ {Tags:["ec.FountainMenu","ec.ExchangeElement","ec.ExBuy5"],width:0.23f,height:0.02f,response:1b}

# === 6. Random Title — 100 Dreamdust ===
execute rotated ~ 0 positioned ^ ^1.40 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.FountainMenu","ec.ExchangeElement","ec.ExBuy6Label"],billboard:"center",text:[{text:"Random Title",color:"#E0B0FF"},{text:" — 100 Dust",color:"gray"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute rotated ~ 0 positioned ^ ^1.42 ^1.8 run summon interaction ~ ~ ~ {Tags:["ec.FountainMenu","ec.ExchangeElement","ec.ExBuy6"],width:0.23f,height:0.02f,response:1b}

# === 7. Guaranteed Exquisite — 200 Dreamdust ===
execute rotated ~ 0 positioned ^ ^1.20 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.FountainMenu","ec.ExchangeElement","ec.ExBuy7Label"],billboard:"center",text:[{text:"Exquisite Pull",color:"light_purple",bold:true},{text:" — 200 Dust",color:"gray"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute rotated ~ 0 positioned ^ ^1.22 ^1.8 run summon interaction ~ ~ ~ {Tags:["ec.FountainMenu","ec.ExchangeElement","ec.ExBuy7"],width:0.23f,height:0.02f,response:1b}

# === 8. Guaranteed Mythical — 500 Dreamdust ===
execute rotated ~ 0 positioned ^ ^1.0 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.FountainMenu","ec.ExchangeElement","ec.ExBuy8Label"],billboard:"center",text:[{text:"Mythical Pull",color:"gold",bold:true},{text:" — 500 Dust",color:"gray"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute rotated ~ 0 positioned ^ ^1.02 ^1.8 run summon interaction ~ ~ ~ {Tags:["ec.FountainMenu","ec.ExchangeElement","ec.ExBuy8"],width:0.23f,height:0.02f,response:1b}

# === BACK BUTTON ===
execute rotated ~ 0 positioned ^ ^0.75 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.FountainMenu","ec.ExchangeElement"],billboard:"center",text:{text:"\u2190 Back",color:"yellow"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute rotated ~ 0 positioned ^ ^0.77 ^1.8 run summon interaction ~ ~ ~ {Tags:["ec.FountainMenu","ec.ExchangeElement","ec.ExBack"],width:0.16f,height:0.02f,response:1b}

# === CLOSE BUTTON ===
execute rotated ~ 0 positioned ^ ^0.55 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.FountainMenu","ec.ExchangeElement"],billboard:"center",text:{text:"[Close]",color:"red"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute rotated ~ 0 positioned ^ ^0.57 ^1.8 run summon interaction ~ ~ ~ {Tags:["ec.FountainMenu","ec.ExchangeElement","ec.ExClose"],width:0.16f,height:0.02f,response:1b}

# Stamp session on all new entities
execute as @e[type=item_display,tag=ec.ExchangeElement,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = @p[tag=ec.InFountain,distance=..5] adv.gui_session
execute as @e[type=text_display,tag=ec.ExchangeElement,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = @p[tag=ec.InFountain,distance=..5] adv.gui_session
execute as @e[type=interaction,tag=ec.ExchangeElement,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = @p[tag=ec.InFountain,distance=..5] adv.gui_session

playsound minecraft:block.wooden_button.click_on master @a[distance=..5] ~ ~ ~ 0.5 1.2
