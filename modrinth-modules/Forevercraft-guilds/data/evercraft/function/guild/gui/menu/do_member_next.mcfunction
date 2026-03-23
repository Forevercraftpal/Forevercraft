# Guild Menu — Members page go to next page
# @s = player

# Count online guild members to compute max page
scoreboard players set #gm_count ec.temp 0
tag @s add ec.guild_viewer
execute as @a[scores={ec.guild_id=1..}] if score @s ec.guild_id = @p[tag=ec.guild_viewer] ec.guild_id run scoreboard players add #gm_count ec.temp 1
tag @s remove ec.guild_viewer

# Calculate max page
scoreboard players set #gm_max_page ec.temp 1
execute if score #gm_count ec.temp matches 7.. run scoreboard players set #gm_max_page ec.temp 2
execute if score #gm_count ec.temp matches 13.. run scoreboard players set #gm_max_page ec.temp 3
execute if score #gm_count ec.temp matches 19.. run scoreboard players set #gm_max_page ec.temp 4
execute if score #gm_count ec.temp matches 25.. run scoreboard players set #gm_max_page ec.temp 5
execute if score #gm_count ec.temp matches 31.. run scoreboard players set #gm_max_page ec.temp 6

execute if score @s ec.gm_page >= #gm_max_page ec.temp run return 0
scoreboard players add @s ec.gm_page 1
function evercraft:guild/gui/menu/refresh_members
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
