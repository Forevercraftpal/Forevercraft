# CF Cosmetics — Crate Particles Click (runs as interaction entity)
data remove entity @s interaction
execute as @p[tag=CF.InCodex,distance=..5] run tellraw @s [{"text":"[","color":"dark_gray"},{"text":"Crate Particles","color":"#FF69B4","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Open the ","color":"gray"},{"text":"Forevercraft Codex","color":"green","bold":true},{"text":" > Cosmetics to equip!","color":"gray"}]
execute as @p[tag=CF.InCodex,distance=..5] run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.3 1.2
