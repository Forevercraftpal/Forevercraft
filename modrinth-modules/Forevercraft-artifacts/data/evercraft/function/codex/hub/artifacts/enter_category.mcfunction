# Artifact Collection — Enter Category (Macro)
# Macro arg: category (1-4)
# Run as the player, at player, facing anchor

# Set category and page (page 3 = first item page)
$scoreboard players set @s adv.gui_art_cat $(category)
scoreboard players set @s adv.gui_page 3

scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

# Kill category picker content
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.ArtCats,distance=..5]

# Kill old sub-nav ([← Tiers]) and respawn as [← Categories]
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.ArtSubNav,distance=..5]
execute rotated ~ 0 positioned ^ ^1.19 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtSubNav"],billboard:"center",text:{text:"[\u2190 Categories]",color:"yellow"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^1.15 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtSubNav","Adv.ArtSubNavClick"],width:0.6f,height:0.06f,response:1b}

# Update title per category
execute if score @s adv.gui_art_cat matches 1 run function evercraft:codex/hub/artifacts/set_cat_title {cat:"Weapons"}
execute if score @s adv.gui_art_cat matches 2 run function evercraft:codex/hub/artifacts/set_cat_title {cat:"Armor"}
execute if score @s adv.gui_art_cat matches 3 run function evercraft:codex/hub/artifacts/set_cat_title {cat:"Accessories"}
execute if score @s adv.gui_art_cat matches 4 run function evercraft:codex/hub/artifacts/set_cat_title {cat:"Tools"}
execute if score @s adv.gui_art_cat matches 5 run function evercraft:codex/hub/artifacts/set_cat_title {cat:"Class Artifacts"}

# Check if multi-page — spawn nav arrows if so
function evercraft:codex/hub/artifacts/get_max_page
execute if score @s adv.temp matches 2.. run function evercraft:codex/hub/artifacts/spawn_nav_arrows

# Dispatch to correct item list
function evercraft:codex/hub/artifacts/dispatch_items

# Play click sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
