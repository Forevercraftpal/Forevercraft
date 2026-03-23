# ============================================================
# Stash Settings — Open sub-menu (two-column layout)
# Run as: player with HS.InMenu or HS.InSatchel, at player
# Kills main menu elements, spawns settings sub-menu
# ============================================================

# Kill ALL main menu elements (including background — settings uses its own)
kill @e[type=text_display,tag=HS.MenuEl,distance=..7]
kill @e[type=interaction,tag=HS.MenuEl,distance=..7]
kill @e[type=item_display,tag=HS.MenuEl,distance=..7]

# Tag player as in settings
tag @s add HS.InSettings

# === BACKGROUND PANEL (wider for two columns) ===
execute rotated ~ 0 positioned ^ ^1.25 ^1.8 run summon item_display ~ ~ ~ { Tags:["HS.MenuEl","HS.SettingsBG"], billboard:"center", item:{id:"black_stained_glass_pane",count:1}, item_display:"fixed", transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.02f],scale:[3.2f,2.2f,0.01f]} }

# === TITLE ===
execute rotated ~ 0 positioned ^ ^2.05 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.SettingsEl"], billboard:"center", text:[{text:"\u2726 ",color:"gold"},{text:"Stash Settings",color:"yellow",bold:true},{text:" \u2726",color:"gold"}], background:1,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.54f,0.54f,0.54f]} }

# === SUBTITLE ===
execute rotated ~ 0 positioned ^ ^1.85 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.SettingsEl"], billboard:"center", text:{text:"Toggle categories to KEEP in inventory",color:"dark_gray",italic:true}, background:0,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]} }

# === CATEGORY ROWS (2 columns x 6 rows, 0.15 spacing, scale 0.25) ===
# Left column: ^-0.35   Right column: ^0.35

# --- LEFT COLUMN ---

# L1: Tools
execute rotated ~ 0 positioned ^-0.35 ^1.65 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.SettingsEl","HS.KeepTools"], billboard:"center", text:{text:"Loading...",color:"gray"}, background:0,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]} }
execute rotated ~ 0 positioned ^-0.35 ^1.57 ^1.8 run summon interaction ~ ~ ~ { Tags:["HS.MenuEl","HS.SettingsEl","HS.KeepToolsBtn"], width:0.55f,height:0.1f,response:1b }

# L2: Weapons
execute rotated ~ 0 positioned ^-0.35 ^1.5 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.SettingsEl","HS.KeepWeapons"], billboard:"center", text:{text:"Loading...",color:"gray"}, background:0,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]} }
execute rotated ~ 0 positioned ^-0.35 ^1.42 ^1.8 run summon interaction ~ ~ ~ { Tags:["HS.MenuEl","HS.SettingsEl","HS.KeepWeaponsBtn"], width:0.55f,height:0.1f,response:1b }

# L3: Armor
execute rotated ~ 0 positioned ^-0.35 ^1.35 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.SettingsEl","HS.KeepArmor"], billboard:"center", text:{text:"Loading...",color:"gray"}, background:0,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]} }
execute rotated ~ 0 positioned ^-0.35 ^1.27 ^1.8 run summon interaction ~ ~ ~ { Tags:["HS.MenuEl","HS.SettingsEl","HS.KeepArmorBtn"], width:0.55f,height:0.1f,response:1b }

# L4: Food
execute rotated ~ 0 positioned ^-0.35 ^1.2 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.SettingsEl","HS.KeepFood"], billboard:"center", text:{text:"Loading...",color:"gray"}, background:0,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]} }
execute rotated ~ 0 positioned ^-0.35 ^1.12 ^1.8 run summon interaction ~ ~ ~ { Tags:["HS.MenuEl","HS.SettingsEl","HS.KeepFoodBtn"], width:0.55f,height:0.1f,response:1b }

# L5: Mob Drops
execute rotated ~ 0 positioned ^-0.35 ^1.05 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.SettingsEl","HS.KeepMobDrops"], billboard:"center", text:{text:"Loading...",color:"gray"}, background:0,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]} }
execute rotated ~ 0 positioned ^-0.35 ^0.97 ^1.8 run summon interaction ~ ~ ~ { Tags:["HS.MenuEl","HS.SettingsEl","HS.KeepMobDropsBtn"], width:0.55f,height:0.1f,response:1b }

# L6: Garden
execute rotated ~ 0 positioned ^-0.35 ^0.9 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.SettingsEl","HS.KeepGarden"], billboard:"center", text:{text:"Loading...",color:"gray"}, background:0,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]} }
execute rotated ~ 0 positioned ^-0.35 ^0.82 ^1.8 run summon interaction ~ ~ ~ { Tags:["HS.MenuEl","HS.SettingsEl","HS.KeepGardenBtn"], width:0.55f,height:0.1f,response:1b }

# --- RIGHT COLUMN ---

# R1: Redstone
execute rotated ~ 0 positioned ^0.35 ^1.65 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.SettingsEl","HS.KeepRedstone"], billboard:"center", text:{text:"Loading...",color:"gray"}, background:0,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]} }
execute rotated ~ 0 positioned ^0.35 ^1.57 ^1.8 run summon interaction ~ ~ ~ { Tags:["HS.MenuEl","HS.SettingsEl","HS.KeepRedstoneBtn"], width:0.55f,height:0.1f,response:1b }

# R2: Amenities
execute rotated ~ 0 positioned ^0.35 ^1.5 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.SettingsEl","HS.KeepAmenities"], billboard:"center", text:{text:"Loading...",color:"gray"}, background:0,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]} }
execute rotated ~ 0 positioned ^0.35 ^1.42 ^1.8 run summon interaction ~ ~ ~ { Tags:["HS.MenuEl","HS.SettingsEl","HS.KeepAmenitiesBtn"], width:0.55f,height:0.1f,response:1b }

# R3: Blocks
execute rotated ~ 0 positioned ^0.35 ^1.35 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.SettingsEl","HS.KeepBlocks"], billboard:"center", text:{text:"Loading...",color:"gray"}, background:0,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]} }
execute rotated ~ 0 positioned ^0.35 ^1.27 ^1.8 run summon interaction ~ ~ ~ { Tags:["HS.MenuEl","HS.SettingsEl","HS.KeepBlocksBtn"], width:0.55f,height:0.1f,response:1b }

# R4: Materials
execute rotated ~ 0 positioned ^0.35 ^1.2 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.SettingsEl","HS.KeepMaterials"], billboard:"center", text:{text:"Loading...",color:"gray"}, background:0,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]} }
execute rotated ~ 0 positioned ^0.35 ^1.12 ^1.8 run summon interaction ~ ~ ~ { Tags:["HS.MenuEl","HS.SettingsEl","HS.KeepMaterialsBtn"], width:0.55f,height:0.1f,response:1b }

# R5: Artifacts
execute rotated ~ 0 positioned ^0.35 ^1.05 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.SettingsEl","HS.KeepArtifacts"], billboard:"center", text:{text:"Loading...",color:"gray"}, background:0,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]} }
execute rotated ~ 0 positioned ^0.35 ^0.97 ^1.8 run summon interaction ~ ~ ~ { Tags:["HS.MenuEl","HS.SettingsEl","HS.KeepArtifactsBtn"], width:0.55f,height:0.1f,response:1b }

# R6: Potions
execute rotated ~ 0 positioned ^0.35 ^0.9 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.SettingsEl","HS.KeepPotions"], billboard:"center", text:{text:"Loading...",color:"gray"}, background:0,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]} }
execute rotated ~ 0 positioned ^0.35 ^0.82 ^1.8 run summon interaction ~ ~ ~ { Tags:["HS.MenuEl","HS.SettingsEl","HS.KeepPotionsBtn"], width:0.55f,height:0.1f,response:1b }

# === BACK BUTTON (centered below both columns) ===
execute rotated ~ 0 positioned ^ ^0.7 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.SettingsEl","HS.BackTxt"], billboard:"center", text:[{text:"[ ",color:"dark_gray"},{text:"Back",color:"gray",bold:true},{text:" ]",color:"dark_gray"}], background:1,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]} }
execute rotated ~ 0 positioned ^ ^0.6 ^1.8 run summon interaction ~ ~ ~ { Tags:["HS.MenuEl","HS.SettingsEl","HS.BackBtn"], width:0.4f,height:0.12f,response:1b }

# Refresh to show current keep states
execute at @s run function evercraft:housing/stash/keep/refresh_settings

# Sound
playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.4 1.0
