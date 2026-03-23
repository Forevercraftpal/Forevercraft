# Guild Menu — Members page go to previous page
# @s = player

execute if score @s ec.gm_page matches ..1 run return 0
scoreboard players remove @s ec.gm_page 1
function evercraft:guild/gui/menu/refresh_members
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
