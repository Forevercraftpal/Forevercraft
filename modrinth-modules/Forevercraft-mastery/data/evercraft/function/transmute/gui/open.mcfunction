# Artifact Transmutation GUI — Open
# Run as: player, at player position

# Toggle — if already open, close instead
execute if entity @s[tag=TX.InMenu] run return run function evercraft:transmute/gui/close

# Safety: kill orphaned menu elements
execute at @s run kill @e[type=text_display,tag=TX.MenuEl,distance=..5]
execute at @s run kill @e[type=interaction,tag=TX.MenuEl,distance=..5]
execute at @s run kill @e[type=item_display,tag=TX.MenuEl,distance=..5]

# Tag player
tag @s add TX.InMenu
scoreboard players set @s tx.menu_time 0

# Restore saved state from memory (per-player per-table) or reset to defaults
function evercraft:transmute/memory/get_player_key
execute as @e[type=marker,tag=TX.Marker,distance=..5,limit=1] run function evercraft:transmute/memory/get_table_key
function evercraft:transmute/memory/check_exists with storage evercraft:transmute temp

# If saved state exists, restore it
execute if score #tx_has_save ec.var matches 1.. run function evercraft:transmute/memory/restore with storage evercraft:transmute temp

# Otherwise reset to defaults
execute if score #tx_has_save ec.var matches ..0 run scoreboard players set @s tx.count 0
execute if score #tx_has_save ec.var matches ..0 run scoreboard players set @s tx.tier 0
execute if score #tx_has_save ec.var matches ..0 run scoreboard players set @s tx.required 5
execute if score #tx_has_save ec.var matches ..0 run scoreboard players set @s tx.has_disc 0
execute if score #tx_has_save ec.var matches ..0 run scoreboard players set @s tx.half 0

# === BACKGROUND PANEL ===
execute rotated ~ 0 positioned ^ ^2.15 ^1.8 run summon item_display ~ ~ ~ { Tags:["TX.MenuEl","TX.BG"], billboard:"center", item:{id:"black_stained_glass_pane",count:1}, item_display:"fixed", transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.02f],scale:[2.8f,1.9f,0.01f]} }

# === TITLE ===
execute rotated ~ 0 positioned ^ ^2.85 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["TX.MenuEl","TX.Title"], billboard:"center", text:[{text:"\u2726 ",color:"dark_purple"},{text:"Artifact Transmutation",color:"light_purple",bold:true},{text:" \u2726",color:"dark_purple"}], background:1,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.608f,0.608f,0.608f]} }

# === INFO LINE ===
execute rotated ~ 0 positioned ^ ^2.6 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["TX.MenuEl","TX.Info"], billboard:"center", text:{text:"Sacrifice artifacts of the same tier to receive one of the next tier.",color:"gray"}, background:0,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]} }

# === STATUS LINE (refreshable — shows deposit count/tier) ===
execute rotated ~ 0 positioned ^ ^2.35 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["TX.MenuEl","TX.Status"], billboard:"center", text:{text:"Hold an artifact and click [Deposit] below.",color:"dark_gray"}, background:0,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.473f,0.473f,0.473f]} }

# === RESULT LINE (refreshable — shows tier upgrade path) ===
execute rotated ~ 0 positioned ^ ^2.15 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["TX.MenuEl","TX.Result"], billboard:"center", text:{text:"",color:"gray"}, background:0,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.473f,0.473f,0.473f]} }

# === DISCOUNT LINE (refreshable — Artificer nearby status) ===
execute rotated ~ 0 positioned ^ ^1.95 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["TX.MenuEl","TX.Discount"], billboard:"center", text:{text:"",color:"dark_gray"}, background:0,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]} }

# === DEPOSIT BUTTON ===
execute rotated ~ 0 positioned ^ ^1.65 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["TX.MenuEl","TX.DepositTxt"], billboard:"center", text:[{text:"[ ",color:"dark_gray"},{text:"Deposit Held Artifact",color:"yellow",bold:true},{text:" ]",color:"dark_gray"}], background:1,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.473f,0.473f,0.473f]} }
execute rotated ~ 0 positioned ^ ^1.55 ^1.8 run summon interaction ~ ~ ~ { Tags:["TX.MenuEl","TX.DepositBtn"], width:0.7f,height:0.12f,response:1b }

# === TRANSMUTE BUTTON ===
execute rotated ~ 0 positioned ^0.45 ^1.4 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["TX.MenuEl","TX.TransmuteTxt"], billboard:"center", text:[{text:"[ ",color:"dark_gray"},{text:"Transmute!",color:"dark_gray"},{text:" ]",color:"dark_gray"}], background:1,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.473f,0.473f,0.473f]} }
execute rotated ~ 0 positioned ^ ^1.3 ^1.8 positioned ^0.45 ^0 ^0 run summon interaction ~ ~ ~ { Tags:["TX.MenuEl","TX.TransmuteBtn"], width:0.5f,height:0.12f,response:1b }

# === CLOSE BUTTON ===
execute rotated ~ 0 positioned ^-0.45 ^1.4 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["TX.MenuEl","TX.CloseTxt"], billboard:"center", text:[{text:"[ ",color:"dark_gray"},{text:"Close",color:"gray",bold:true},{text:" ]",color:"dark_gray"}], background:1,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]} }
execute rotated ~ 0 positioned ^ ^1.3 ^1.8 positioned ^-0.45 ^0 ^0 run summon interaction ~ ~ ~ { Tags:["TX.MenuEl","TX.CloseBtn"], width:0.4f,height:0.12f,response:1b }

# Initial refresh to set status/discount/result text
function evercraft:transmute/gui/refresh

# Sound

# Session isolation
scoreboard players add #gui_session ec.var 1
scoreboard players operation @s adv.gui_session = #gui_session ec.var
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[type=text_display,tag=TX.MenuEl,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp
execute as @e[type=item_display,tag=TX.MenuEl,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp
execute as @e[type=interaction,tag=TX.MenuEl,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp

playsound minecraft:block.anvil.use master @s ~ ~ ~ 0.4 1.2
