# Pantry Menu — Prev Page
execute if score @s ec.pantry_page matches 0 run return run tellraw @s [{text:"[Pantry] ",color:"gold"},{text:"Already on first page!",color:"gray"}]
scoreboard players remove @s ec.pantry_page 1
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
function evercraft:pantry/menu/refresh
