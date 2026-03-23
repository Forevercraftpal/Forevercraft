# Guild Menu — Switch to Allies page
# @s = player
execute if score @s ec.guild_page matches 7 run return 0
scoreboard players set @s ec.guild_page 7
scoreboard players set @s ec.guild_allies_pg 1
function evercraft:guild/gui/menu/update_nav
function evercraft:guild/gui/menu/refresh_allies
