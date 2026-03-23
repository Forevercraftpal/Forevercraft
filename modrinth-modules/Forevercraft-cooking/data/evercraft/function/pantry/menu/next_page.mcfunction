# Pantry Menu — Next Page
execute if score @s ec.pantry_page matches 2 run return run tellraw @s [{text:"[Pantry] ",color:"gold"},{text:"Already on last page!",color:"gray"}]
scoreboard players add @s ec.pantry_page 1
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
function evercraft:pantry/menu/refresh
