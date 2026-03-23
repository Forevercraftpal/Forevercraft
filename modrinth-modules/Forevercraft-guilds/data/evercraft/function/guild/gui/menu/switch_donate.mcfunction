# Guild Menu — Switch to Donate page
# @s = player
execute if score @s ec.guild_page matches 3 run return 0
scoreboard players set @s ec.guild_page 3
function evercraft:guild/gui/menu/update_nav
function evercraft:guild/gui/menu/refresh_donate
