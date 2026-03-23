# Guild Menu — Switch to Manage page
# @s = player
execute if score @s ec.guild_page matches 4 run return 0
scoreboard players set @s ec.guild_page 4
function evercraft:guild/gui/menu/update_nav
function evercraft:guild/gui/menu/refresh_manage
