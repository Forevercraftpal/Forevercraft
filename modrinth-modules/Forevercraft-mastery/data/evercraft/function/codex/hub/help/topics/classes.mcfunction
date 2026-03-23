# Help Topic: Classes — Sub-menu with 3 category buttons
# Run as the player (@s = player), position from interaction entity context

playsound minecraft:item.book.page_turn master @s ~ ~ ~ 0.5 1.0

tellraw @s [{"text":"\n"},{"text":"═══════════════════════════════════","color":"dark_red"}]
tellraw @s [{"text":"  "},{"text":"\u2694 Weapon Classes","color":"dark_red","bold":true}]
tellraw @s [{"text":"═══════════════════════════════════","color":"dark_red"}]
tellraw @s [{"text":""}]
tellraw @s [{"text":"  13 classes across 3 categories. Click one","color":"white"}]
tellraw @s [{"text":"  above to learn about each class's abilities,","color":"white"}]
tellraw @s [{"text":"  strengths, weaknesses, and ideal playstyle.","color":"white"}]
tellraw @s [{"text":""}]
tellraw @s [{"text":"═══════════════════════════════════","color":"dark_red"}]

# Kill existing help content via anchor (session-safe)
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute at @s as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.HelpContent,distance=..5]

# Spawn 3 category buttons centered in the display area
# Uses at @s (player) facing anchor for correct local coordinate orientation

# ⚔ Melee (5 classes: Rogue, Berserker, Dancer, Striker, Sentinel)
execute at @s facing entity @e[type=marker,tag=Adv.MenuAnchor,distance=..5,limit=1,sort=nearest] feet rotated ~ 0 positioned ^0 ^2.4 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent","Adv.HelpClassContent"],billboard:"center",text:{text:"\u2694 Melee Classes",color:"dark_red",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.30f,0.30f,0.30f]}}
execute at @s facing entity @e[type=marker,tag=Adv.MenuAnchor,distance=..5,limit=1,sort=nearest] feet rotated ~ 0 positioned ^0 ^2.36 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent","Adv.HelpClassContent","Adv.HelpClsMelee"],width:0.65f,height:0.06f,response:1b}

# ✦ Ranged / Defense (4 classes: Archer, Hunter, Tank, Knight)
execute at @s facing entity @e[type=marker,tag=Adv.MenuAnchor,distance=..5,limit=1,sort=nearest] feet rotated ~ 0 positioned ^0 ^2.05 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent","Adv.HelpClassContent"],billboard:"center",text:{text:"\u2726 Ranged / Defense",color:"red",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.30f,0.30f,0.30f]}}
execute at @s facing entity @e[type=marker,tag=Adv.MenuAnchor,distance=..5,limit=1,sort=nearest] feet rotated ~ 0 positioned ^0 ^2.01 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent","Adv.HelpClassContent","Adv.HelpClsRanged"],width:0.65f,height:0.06f,response:1b}

# ♥ Support (4 classes: Healer, Beastlord, Javelin, Hoplite)
execute at @s facing entity @e[type=marker,tag=Adv.MenuAnchor,distance=..5,limit=1,sort=nearest] feet rotated ~ 0 positioned ^0 ^1.7 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent","Adv.HelpClassContent"],billboard:"center",text:{text:"\u2764 Support",color:"green",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.30f,0.30f,0.30f]}}
execute at @s facing entity @e[type=marker,tag=Adv.MenuAnchor,distance=..5,limit=1,sort=nearest] feet rotated ~ 0 positioned ^0 ^1.66 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent","Adv.HelpClassContent","Adv.HelpClsSupport"],width:0.65f,height:0.06f,response:1b}
