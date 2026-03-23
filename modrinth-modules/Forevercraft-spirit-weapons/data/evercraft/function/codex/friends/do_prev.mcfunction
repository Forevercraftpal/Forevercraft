# Codex Friends — Do previous page
# @s = player

execute if score @s ec.fr_page matches ..1 run return 0
scoreboard players remove @s ec.fr_page 1
function evercraft:codex/friends/refresh
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
