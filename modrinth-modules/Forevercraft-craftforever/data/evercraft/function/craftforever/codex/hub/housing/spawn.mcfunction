# Craftforever Codex — Housing Guide Section
# Shows real home tier and decoration score from housing system
# Uses hs.tier (0-5) and hs.decor
# Run as player at player position

execute rotated ~ 0 positioned ^ ^2.75 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:{text:"Your home comfort & tier",color:"gray",italic:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}

# Read housing data
execute store result storage evercraft:cf_temp tier int 1 run scoreboard players get @s hs.tier
execute store result storage evercraft:cf_temp decor int 1 run scoreboard players get @s hs.decor
execute store result storage evercraft:cf_temp visitors int 1 run scoreboard players get @s hs.visitors

# Branch: no home vs has home
execute if score @s hs.tier matches ..0 run function evercraft:craftforever/codex/hub/housing/show_no_home
execute if score @s hs.tier matches 1.. run function evercraft:craftforever/codex/hub/housing/show_home with storage evercraft:cf_temp
