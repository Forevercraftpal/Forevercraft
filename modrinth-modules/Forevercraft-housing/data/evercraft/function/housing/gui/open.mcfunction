# ============================================================
# Hearthstone GUI — Open
# Run as: player, at player position
# ============================================================

# Toggle — if already open, close instead
execute if entity @s[tag=HS.InMenu] run return run function evercraft:housing/gui/close

# Safety: kill orphaned menu elements
execute at @s run kill @e[type=text_display,tag=HS.MenuEl,distance=..5]
execute at @s run kill @e[type=interaction,tag=HS.MenuEl,distance=..5]
execute at @s run kill @e[type=item_display,tag=HS.MenuEl,distance=..5]

# Auto-repair: if player's hs.tier is 0 but a marker exists, recover tier from marker data
execute if score @s hs.tier matches ..0 at @s store result score @s hs.tier run data get entity @e[type=marker,tag=HS.Marker,distance=..5,limit=1] data.owner_tier
# Guard: if tier is still 0 (player doesn't own a hearthstone), don't open the menu
execute if score @s hs.tier matches ..0 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You don't own this Hearthstone.",color:"gray"}]
execute if score @s hs.tier matches ..0 run playsound minecraft:block.anvil.land player @s ~ ~ ~ 0.3 1.5
execute if score @s hs.tier matches ..0 run return 0

# Disable the hearthstone interaction entity so it can't be re-triggered
execute at @s run data modify entity @e[type=interaction,tag=HS.Interact,distance=..5,limit=1] height set value 0.0f

# Tag player
tag @s add HS.InMenu
scoreboard players set @s hs.menu_time 0

# === BACKGROUND PANEL ===
execute rotated ~ 0 positioned ^ ^2.05 ^1.8 run summon item_display ~ ~ ~ { Tags:["HS.MenuEl","HS.BG"], billboard:"center", item:{id:"black_stained_glass_pane",count:1}, item_display:"fixed", transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.02f],scale:[2.8f,2.7f,0.01f]} }

# === TITLE ===
execute rotated ~ 0 positioned ^ ^3.05 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.Title"], billboard:"center", text:[{text:"\u2726 ",color:"gold"},{text:"Hearthstone",color:"yellow",bold:true},{text:" \u2726",color:"gold"}], background:1,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.608f,0.608f,0.608f]} }

# === TIER LINE (refreshable) ===
execute rotated ~ 0 positioned ^ ^2.8 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.Tier"], billboard:"center", text:{text:"Loading...",color:"gray"}, background:0,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.473f,0.473f,0.473f]} }

# === BUFFS LINE (refreshable — shows current zone buffs) ===
execute rotated ~ 0 positioned ^ ^2.6 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.Buffs"], billboard:"center", text:{text:"",color:"gray"}, background:0,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]} }

# === DECORATION SCORE (refreshable) ===
execute rotated ~ 0 positioned ^ ^2.45 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.Decor"], billboard:"center", text:{text:"",color:"gray"}, background:0,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]} }

# === TIER HELP [?] (left of comfort line — leaderboard) ===
execute rotated ~ 0 positioned ^0.7 ^2.45 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.TierHelp"], billboard:"center", text:{text:"[?]",color:"yellow"}, background:0,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]} }
execute rotated ~ 0 positioned ^0.7 ^2.37 ^1.8 run summon interaction ~ ~ ~ { Tags:["HS.MenuEl","HS.TierHelpBtn"], width:0.2f,height:0.1f,response:1b }

# === COMFORT HELP [?] (right of comfort line — how to increase) ===
execute rotated ~ 0 positioned ^-0.7 ^2.45 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.ComfortHelp"], billboard:"center", text:{text:"[?]",color:"yellow"}, background:0,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]} }
execute rotated ~ 0 positioned ^-0.7 ^2.37 ^1.8 run summon interaction ~ ~ ~ { Tags:["HS.MenuEl","HS.ComfortHelpBtn"], width:0.2f,height:0.1f,response:1b }

# === VISITORS LINE (refreshable) ===
execute rotated ~ 0 positioned ^ ^2.32 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.Visitors"], billboard:"center", text:{text:"",color:"gray"}, background:0,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]} }

# === NEXT TIER INFO (refreshable — shows what upgrade gives) ===
execute rotated ~ 0 positioned ^ ^2.2 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.Next"], billboard:"center", text:{text:"",color:"gray"}, background:0,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]} }

# === COST LINE (refreshable — shows netherite ingot cost) ===
execute rotated ~ 0 positioned ^ ^2.05 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.Cost"], billboard:"center", text:{text:"",color:"gray"}, background:0,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]} }

# === UPGRADE BUTTON ===
execute rotated ~ 0 positioned ^ ^1.8 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.UpgradeTxt"], billboard:"center", text:[{text:"[ ",color:"dark_gray"},{text:"Upgrade",color:"dark_gray"},{text:" ]",color:"dark_gray"}], background:1,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.473f,0.473f,0.473f]} }
execute rotated ~ 0 positioned ^ ^1.68 ^1.8 run summon interaction ~ ~ ~ { Tags:["HS.MenuEl","HS.UpgradeBtn"], width:0.6f,height:0.14f,response:1b }

# === QUICK STASH BUTTON ===
execute rotated ~ 0 positioned ^ ^1.6 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.StashTxt"], billboard:"center", text:[{text:"[ ",color:"dark_gray"},{text:"Quick Stash",color:"green"},{text:" ]",color:"dark_gray"}], background:1,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]} }
execute rotated ~ 0 positioned ^ ^1.5 ^1.8 run summon interaction ~ ~ ~ { Tags:["HS.MenuEl","HS.StashBtn"], width:0.6f,height:0.12f,response:1b }

# === STASH SETTINGS BUTTON ===
execute rotated ~ 0 positioned ^ ^1.4 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.SettingsTxt"], billboard:"center", text:[{text:"[ ",color:"dark_gray"},{text:"Stash Settings",color:"gray"},{text:" ]",color:"dark_gray"}], background:1,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]} }
execute rotated ~ 0 positioned ^ ^1.3 ^1.8 run summon interaction ~ ~ ~ { Tags:["HS.MenuEl","HS.SettingsBtn"], width:0.6f,height:0.12f,response:1b }

# === LABORERS BUTTON ===
execute rotated ~ 0 positioned ^ ^1.2 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.LaborersTxt"], billboard:"center", text:[{text:"[ ",color:"dark_gray"},{text:"Laborers",color:"#AB47BC"},{text:" ]",color:"dark_gray"}], background:1,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]} }
execute rotated ~ 0 positioned ^ ^1.1 ^1.8 run summon interaction ~ ~ ~ { Tags:["HS.MenuEl","HS.LaborersBtn"], width:0.6f,height:0.12f,response:1b }

# === CLOSE BUTTON ===
execute rotated ~ 0 positioned ^ ^1.0 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.CloseTxt"], billboard:"center", text:[{text:"[ ",color:"dark_gray"},{text:"Close",color:"gray",bold:true},{text:" ]",color:"dark_gray"}], background:1,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]} }
execute rotated ~ 0 positioned ^ ^0.9 ^1.8 run summon interaction ~ ~ ~ { Tags:["HS.MenuEl","HS.CloseBtn"], width:0.4f,height:0.12f,response:1b }

# Initial refresh to set tier/buffs/cost text
execute at @s run function evercraft:housing/gui/refresh

# Sound

# Session isolation
scoreboard players add #gui_session ec.var 1
scoreboard players operation @s adv.gui_session = #gui_session ec.var
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[type=text_display,tag=HS.MenuEl,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp
execute as @e[type=item_display,tag=HS.MenuEl,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp
execute as @e[type=interaction,tag=HS.MenuEl,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp

playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.4 1.2
