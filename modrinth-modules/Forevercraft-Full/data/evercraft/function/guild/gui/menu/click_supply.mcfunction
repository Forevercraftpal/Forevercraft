# Guild Menu — Supply button clicked: show tier selection
# @s = player, ec.gd_supply_tgt = target guild ID

# Tag player as in supply selection mode
tag @s add ec.guild_supply_select

# Get target guild name
scoreboard players operation #Search ec.guild_id = @s ec.gd_supply_tgt
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] run data modify storage evercraft:guild temp.supply_target_name set from entity @s data.name

# Kill existing page content and show supply menu
execute at @s run kill @e[type=text_display,tag=ec.guild_page_el,distance=..5]
execute at @s run kill @e[type=interaction,tag=ec.guild_page_el,distance=..5]

# Spawn supply tier selection
function evercraft:guild/gui/menu/spawn_supply_select with storage evercraft:guild temp
