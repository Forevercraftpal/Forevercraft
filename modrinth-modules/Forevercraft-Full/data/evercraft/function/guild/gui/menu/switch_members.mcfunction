# Guild Menu — Switch to Members page
# @s = player
# Allow re-entry if in detail view (need to go back to roster)
execute if score @s ec.guild_page matches 2 unless entity @s[tag=ec.gm_detail_view] run return 0
tag @s remove ec.gm_detail_view
scoreboard players set @s ec.guild_page 2
scoreboard players set @s ec.gm_page 1
function evercraft:guild/gui/menu/update_nav
function evercraft:guild/gui/menu/refresh_members
