# Guild Menu — Switch to Event page
# @s = player
execute if score @s ec.guild_page matches 6 run return 0
scoreboard players set @s ec.guild_page 6
function evercraft:guild/gui/menu/update_nav
function evercraft:guild/gui/menu/refresh_event
