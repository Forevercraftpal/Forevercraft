# Wise Wanderer — Open Floating GUI
# Spawns text_display + interaction entities in front of the player
# Uses item_display background pane (same technique as Advantage GUI)
# Runs as the player who clicked the Wise Wanderer

# Tag the player
tag @s add WW.InMenu

# Spawn anchor marker (yaw-only, eye level, 1.8 blocks forward)
execute rotated ~ 0 positioned ^ ^2.05 ^1.8 run summon marker ~ ~ ~ {Tags:["WW.MenuElement","WW.MenuAnchor"]}

# Background panel (black stained glass pane, scaled to cover all content)
execute rotated ~ 0 positioned ^ ^2.05 ^1.8 run summon item_display ~ ~ ~ {Tags:["WW.MenuElement","WW.MenuBG"],billboard:"center",item:{id:"black_stained_glass_pane",count:1},item_display:"fixed",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.02f],scale:[2.8f,2.0f,0.01f]}}

# === Title ===
execute rotated ~ 0 positioned ^ ^2.85 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["WW.MenuElement","WW.MenuTitle"],billboard:"center",text:{text:"\u2726 Wise Wanderer's Wares \u2726",color:"gold",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.743f,0.743f,0.743f]}}

# === Crate Rows (text_display + interaction pairs) ===
# Text scale 0.4, rows spaced 0.16 apart
# Interaction: small hitbox (width:0.3, height:0.06), shifted right (^-0.3) to align with [Buy]
# AABB extends upward from feet, so position interaction slightly below text center

# Common - 15 levels
execute rotated ~ 0 positioned ^ ^2.65 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["WW.MenuElement","WW.RowCommon"],billboard:"center",text:[{text:"  Common Crate",color:"white"},{text:"         15 Lvls  ",color:"gray"},{text:"[Buy]",color:"green",bold:true}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.54f,0.54f,0.54f]}}
execute rotated ~ 0 positioned ^-0.63 ^2.64 ^1.78 run summon interaction ~ ~ ~ {Tags:["WW.MenuElement","WW.BuyCommon"],width:0.2f,height:0.03f,response:1b}

# Uncommon - 30 levels
execute rotated ~ 0 positioned ^ ^2.49 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["WW.MenuElement","WW.RowUncommon"],billboard:"center",text:[{text:"  Uncommon Crate",color:"blue"},{text:"      30 Lvls  ",color:"gray"},{text:"[Buy]",color:"green",bold:true}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.54f,0.54f,0.54f]}}
execute rotated ~ 0 positioned ^-0.63 ^2.48 ^1.78 run summon interaction ~ ~ ~ {Tags:["WW.MenuElement","WW.BuyUncommon"],width:0.2f,height:0.03f,response:1b}

# Rare - 50 levels
execute rotated ~ 0 positioned ^ ^2.33 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["WW.MenuElement","WW.RowRare"],billboard:"center",text:[{text:"  Rare Crate",color:"aqua"},{text:"            50 Lvls  ",color:"gray"},{text:"[Buy]",color:"green",bold:true}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.54f,0.54f,0.54f]}}
execute rotated ~ 0 positioned ^-0.63 ^2.32 ^1.78 run summon interaction ~ ~ ~ {Tags:["WW.MenuElement","WW.BuyRare"],width:0.2f,height:0.03f,response:1b}

# Ornate - 75 levels
execute rotated ~ 0 positioned ^ ^2.17 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["WW.MenuElement","WW.RowOrnate"],billboard:"center",text:[{text:"  Ornate Crate",color:"dark_purple"},{text:"        75 Lvls  ",color:"gray"},{text:"[Buy]",color:"green",bold:true}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.54f,0.54f,0.54f]}}
execute rotated ~ 0 positioned ^-0.63 ^2.16 ^1.78 run summon interaction ~ ~ ~ {Tags:["WW.MenuElement","WW.BuyOrnate"],width:0.2f,height:0.03f,response:1b}

# Exquisite - 125 levels
execute rotated ~ 0 positioned ^ ^2.01 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["WW.MenuElement","WW.RowExquisite"],billboard:"center",text:[{text:"  Exquisite Crate",color:"light_purple"},{text:"   125 Lvls  ",color:"gray"},{text:"[Buy]",color:"green",bold:true}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.54f,0.54f,0.54f]}}
execute rotated ~ 0 positioned ^-0.63 ^2.0 ^1.78 run summon interaction ~ ~ ~ {Tags:["WW.MenuElement","WW.BuyExquisite"],width:0.2f,height:0.03f,response:1b}

# Mythical - 250 levels
execute rotated ~ 0 positioned ^ ^1.85 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["WW.MenuElement","WW.RowMythical"],billboard:"center",text:[{text:"  Mythical Crate",color:"gold"},{text:"     250 Lvls  ",color:"gray"},{text:"[Buy]",color:"green",bold:true}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.54f,0.54f,0.54f]}}
execute rotated ~ 0 positioned ^-0.63 ^1.84 ^1.78 run summon interaction ~ ~ ~ {Tags:["WW.MenuElement","WW.BuyMythical"],width:0.2f,height:0.03f,response:1b}

# === XP Display ===
execute rotated ~ 0 positioned ^ ^1.63 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["WW.MenuElement","WW.XPDisplay"],billboard:"center",text:{text:"Your XP: ... Levels",color:"green"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.54f,0.54f,0.54f]}}

# === Close Button ===
execute rotated ~ 0 positioned ^ ^1.4 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["WW.MenuElement","WW.CloseText"],billboard:"center",text:{text:"[ Close ]",color:"red",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.54f,0.54f,0.54f]}}
execute rotated ~ 0 positioned ^ ^1.38 ^1.78 run summon interaction ~ ~ ~ {Tags:["WW.MenuElement","WW.CloseClick"],width:0.35f,height:0.04f,response:1b}

# Sound

# Initialize inactivity timer
scoreboard players set @s ec.ww_idle 0

# Session isolation
scoreboard players add #gui_session ec.var 1
scoreboard players operation @s adv.gui_session = #gui_session ec.var
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[type=text_display,tag=WW.MenuElement,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp
execute as @e[type=item_display,tag=WW.MenuElement,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp
execute as @e[type=interaction,tag=WW.MenuElement,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp

playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.8 1.2

# Initial refresh to set XP display and row availability
function evercraft:professions/jobs/wise_wanderer/gui/refresh
