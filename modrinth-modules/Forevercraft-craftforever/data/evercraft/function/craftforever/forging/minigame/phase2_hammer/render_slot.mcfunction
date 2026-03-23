$execute store result score #cf_slot_val ec.cf_temp run data get storage evercraft:craftforever p$(slot)

$execute if score #cf_slot_val ec.cf_temp matches 1 rotated ~ 0 positioned ^$(x_offset) ^2.4 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuEl","CF.PatDot"],billboard:"center",text:{"text":"\u25cf","color":"red"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.675f,0.675f,0.675f]}}

$execute if score #cf_slot_val ec.cf_temp matches 2 rotated ~ 0 positioned ^$(x_offset) ^2.4 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuEl","CF.PatDot"],billboard:"center",text:{"text":"\u25cf","color":"blue"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.675f,0.675f,0.675f]}}

$execute if score #cf_slot_val ec.cf_temp matches 3 rotated ~ 0 positioned ^$(x_offset) ^2.4 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuEl","CF.PatDot"],billboard:"center",text:{"text":"\u25cf","color":"yellow"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.675f,0.675f,0.675f]}}

$execute if score #cf_slot_val ec.cf_temp matches 4 rotated ~ 0 positioned ^$(x_offset) ^2.4 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuEl","CF.PatDot"],billboard:"center",text:{"text":"\u25cf","color":"green"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.675f,0.675f,0.675f]}}
