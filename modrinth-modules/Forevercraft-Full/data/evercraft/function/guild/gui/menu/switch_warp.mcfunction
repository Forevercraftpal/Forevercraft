# Guild Menu — Switch to Warp page
# @s = player
execute if score @s ec.guild_page matches 5 run return 0
scoreboard players set @s ec.guild_page 5
scoreboard players set @s ec.guild_warp_pg 1
function evercraft:guild/gui/menu/update_nav
function evercraft:guild/gui/menu/refresh_warp
