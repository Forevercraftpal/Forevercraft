# Guild Menu — Switch to Info page
# @s = player
execute if score @s ec.guild_page matches 1 run return 0
scoreboard players set @s ec.guild_page 1
function evercraft:guild/gui/menu/update_nav
function evercraft:guild/gui/menu/refresh_info
