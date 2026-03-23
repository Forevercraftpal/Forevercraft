# Open the Fountain pull menu
# Runs as @s = player, at @s (player position)
# Uses Pet Menu V2 pattern: text_display + interaction entities with billboard:"center"

# Toggle — if already in fountain menu, close instead
execute if entity @s[tag=ec.InFountain] run return run function evercraft:gacha/fountain/menu/close

# Tag player
tag @s add ec.InFountain

# Hide fountain label while menu is open
execute as @e[type=text_display,tag=ec.fountain_label,distance=..5] run data modify entity @s text set value {text:""}

# Disable fountain interaction to prevent overlap with menu buttons
execute as @e[type=interaction,tag=ec.fountain_click,distance=..5] run data modify entity @s height set value 0.0f

# Initialize inactivity timer
scoreboard players set @s ec.gf_idle 0

# Generate unique session ID for multiplayer isolation
scoreboard players add #gui_session ec.var 1
scoreboard players operation @s adv.gui_session = #gui_session ec.var

# Spawn menu in front of player (player-relative coordinates)
# Background panel (centered at ^2.05 ^1.8, scale 2.6 tall)
execute rotated ~ 0 positioned ^ ^2.05 ^1.8 run summon item_display ~ ~ ~ {Tags:["ec.FountainMenu","ec.FountainElement"],billboard:"center",item:{id:"black_stained_glass_pane",count:1},item_display:"fixed",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.02f],scale:[3.0f,2.6f,0.01f]}}

# Title
execute rotated ~ 0 positioned ^ ^2.75 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.FountainMenu","ec.FountainElement"],billboard:"center",text:{text:"\u2726 Fountain of Eternal Dreams \u2726",color:"#E0B0FF",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.675f,0.675f,0.675f]}}

# Balance check button
execute rotated ~ 0 positioned ^ ^2.55 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.FountainMenu","ec.FountainElement"],billboard:"center",text:{text:"[Check Balance]",color:"#E0B0FF"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute rotated ~ 0 positioned ^ ^2.57 ^1.8 run summon interaction ~ ~ ~ {Tags:["ec.FountainMenu","ec.FountainElement","ec.FountainClickBalance"],width:0.21f,height:0.025f,response:1b}

# === INFO [?] BUTTON (below balance) ===
execute rotated ~ 0 positioned ^ ^2.40 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.FountainMenu","ec.FountainElement"],billboard:"center",text:{text:"[?]",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]}}
execute rotated ~ 0 positioned ^ ^2.42 ^1.8 run summon interaction ~ ~ ~ {Tags:["ec.FountainMenu","ec.FountainElement","ec.FountainClickInfo"],width:0.07f,height:0.02f,response:1b}

# === PULL x1 BUTTON ===
execute rotated ~ 0 positioned ^ ^2.25 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.FountainMenu","ec.FountainElement","ec.FountainBtn1"],billboard:"center",text:{text:"\u2726 Pull x1 (5 Coins) \u2726",color:"light_purple",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.513f,0.513f,0.513f]}}
execute rotated ~ 0 positioned ^ ^2.27 ^1.8 run summon interaction ~ ~ ~ {Tags:["ec.FountainMenu","ec.FountainElement","ec.FountainClick1"],width:0.23f,height:0.03f,response:1b}

# === PULL x10 BUTTON ===
execute rotated ~ 0 positioned ^ ^1.90 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.FountainMenu","ec.FountainElement","ec.FountainBtn10"],billboard:"center",text:{text:"\u2726 Pull x10 (50 Coins) \u2726",color:"gold",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.513f,0.513f,0.513f]}}
execute rotated ~ 0 positioned ^ ^1.92 ^1.8 run summon interaction ~ ~ ~ {Tags:["ec.FountainMenu","ec.FountainElement","ec.FountainClick10"],width:0.23f,height:0.03f,response:1b}

# === LUCID CLAIM BUTTON ===
execute rotated ~ 0 positioned ^ ^1.55 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.FountainMenu","ec.FountainElement","ec.FountainBtnSpark"],billboard:"center",text:{text:"\u2605 Lucid Claim \u2605",color:"#FFD700",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.473f,0.473f,0.473f]}}
execute rotated ~ 0 positioned ^ ^1.57 ^1.8 run summon interaction ~ ~ ~ {Tags:["ec.FountainMenu","ec.FountainElement","ec.FountainClickSpark"],width:0.23f,height:0.03f,response:1b}

# === DREAMDUST EXCHANGE BUTTON ===
execute rotated ~ 0 positioned ^ ^1.20 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.FountainMenu","ec.FountainElement","ec.FountainBtnExchange"],billboard:"center",text:{text:"\u25C6 Dreamdust Exchange \u25C6",color:"#E0B0FF"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.473f,0.473f,0.473f]}}
execute rotated ~ 0 positioned ^ ^1.22 ^1.8 run summon interaction ~ ~ ~ {Tags:["ec.FountainMenu","ec.FountainElement","ec.FountainClickExchange"],width:0.23f,height:0.03f,response:1b}

# === CLOSE BUTTON ===
execute rotated ~ 0 positioned ^ ^0.85 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.FountainMenu","ec.FountainElement","ec.FountainBtnClose"],billboard:"center",text:{text:"[Close]",color:"red"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute rotated ~ 0 positioned ^ ^0.87 ^1.8 run summon interaction ~ ~ ~ {Tags:["ec.FountainMenu","ec.FountainElement","ec.FountainClickClose"],width:0.16f,height:0.025f,response:1b}

# Stamp session
execute as @e[type=item_display,tag=ec.FountainMenu,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_session ec.var
execute as @e[type=text_display,tag=ec.FountainMenu,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_session ec.var
execute as @e[type=interaction,tag=ec.FountainMenu,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_session ec.var

playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 0.5 1.2
