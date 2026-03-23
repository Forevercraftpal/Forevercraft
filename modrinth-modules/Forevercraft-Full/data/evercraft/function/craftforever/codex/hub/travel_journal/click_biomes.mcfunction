# CF Travel Journal — Biomes Click (runs as interaction entity)
data remove entity @s interaction
execute as @p[tag=CF.InCodex,distance=..5] run tellraw @s [{"text":"[","color":"dark_gray"},{"text":"Biomes","color":"dark_green","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Open the ","color":"gray"},{"text":"Forevercraft Codex","color":"green","bold":true},{"text":" > Travel Journal > Biomes to explore!","color":"gray"}]
execute as @p[tag=CF.InCodex,distance=..5] run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.3 1.2
