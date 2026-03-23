# ============================================================
# House Key GUI — Open
# Run as: player, at player position
# Compact menu: Quick Stash, Stash Settings, Close
# ============================================================

# Toggle — if already open, close instead
execute if entity @s[tag=HS.InSatchel] run return run function evercraft:housing/satchel/gui/close

# Safety: kill orphaned elements
execute at @s run kill @e[type=text_display,tag=HS.SatchelEl,distance=..5]
execute at @s run kill @e[type=interaction,tag=HS.SatchelEl,distance=..5]
execute at @s run kill @e[type=item_display,tag=HS.SatchelEl,distance=..5]

# Tag player
tag @s add HS.InSatchel
scoreboard players set @s hs.menu_time 0

# === BACKGROUND PANEL ===
execute rotated ~ 0 positioned ^ ^1.25 ^1.8 run summon item_display ~ ~ ~ { Tags:["HS.SatchelEl","HS.MenuEl","HS.SatchelBG"], billboard:"center", item:{id:"black_stained_glass_pane",count:1}, item_display:"fixed", transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.02f],scale:[1.8f,1.2f,0.01f]} }

# === TITLE ===
execute rotated ~ 0 positioned ^ ^1.65 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.SatchelEl","HS.MenuEl","HS.SatchelTitle"], billboard:"center", text:[{text:"\ud83d\udd11 ",color:"gold"},{text:"House Key",color:"yellow",bold:true}], background:1,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.54f,0.54f,0.54f]} }

# === QUICK STASH BUTTON ===
execute rotated ~ 0 positioned ^ ^1.35 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.SatchelEl","HS.MenuEl","HS.SatchelStashTxt"], billboard:"center", text:[{text:"[ ",color:"dark_gray"},{text:"Quick Stash",color:"green"},{text:" ]",color:"dark_gray"}], background:1,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]} }
execute rotated ~ 0 positioned ^ ^1.25 ^1.8 run summon interaction ~ ~ ~ { Tags:["HS.SatchelEl","HS.MenuEl","HS.SatchelStashBtn"], width:0.6f,height:0.12f,response:1b }

# === STASH SETTINGS BUTTON ===
execute rotated ~ 0 positioned ^ ^1.15 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.SatchelEl","HS.MenuEl","HS.SatchelSettingsTxt"], billboard:"center", text:[{text:"[ ",color:"dark_gray"},{text:"Stash Settings",color:"gray"},{text:" ]",color:"dark_gray"}], background:1,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]} }
execute rotated ~ 0 positioned ^ ^1.05 ^1.8 run summon interaction ~ ~ ~ { Tags:["HS.SatchelEl","HS.MenuEl","HS.SatchelSettingsBtn"], width:0.6f,height:0.12f,response:1b }

# === CLOSE BUTTON ===
execute rotated ~ 0 positioned ^ ^0.95 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.SatchelEl","HS.MenuEl","HS.SatchelCloseTxt"], billboard:"center", text:[{text:"[ ",color:"dark_gray"},{text:"Close",color:"gray",bold:true},{text:" ]",color:"dark_gray"}], background:1,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]} }
execute rotated ~ 0 positioned ^ ^0.85 ^1.8 run summon interaction ~ ~ ~ { Tags:["HS.SatchelEl","HS.MenuEl","HS.SatchelCloseBtn"], width:0.4f,height:0.12f,response:1b }

# Sound
playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.4 1.2
