# Guild Menu — Add one member row to the members page
# @s = the guild member being listed
# #guild_row ec.temp = current row index (0-based, across ALL members)
# #guild_skip ec.temp = rows to skip (page-based)
# #guild_displayed ec.temp = rows displayed this page

# Skip members before current page
execute if score #guild_row ec.temp < #guild_skip ec.temp run scoreboard players add #guild_row ec.temp 1
execute if score #guild_row ec.temp < #guild_skip ec.temp run return 0

# Cap at 6 rows per page
execute if score #guild_displayed ec.temp matches 6.. run scoreboard players add #guild_row ec.temp 1
execute if score #guild_displayed ec.temp matches 6.. run return 0

# Get rank name
execute if score @s ec.guild_rank matches 1 run data modify storage evercraft:guild temp.rank_name set value "Associate"
execute if score @s ec.guild_rank matches 2 run data modify storage evercraft:guild temp.rank_name set value "Member"
execute if score @s ec.guild_rank matches 3 run data modify storage evercraft:guild temp.rank_name set value "Aide"
execute if score @s ec.guild_rank matches 4 run data modify storage evercraft:guild temp.rank_name set value "Representative"
execute if score @s ec.guild_rank matches 5 run data modify storage evercraft:guild temp.rank_name set value "Administrator"
execute if score @s ec.guild_rank matches 6 run data modify storage evercraft:guild temp.rank_name set value "Dedicated"
execute if score @s ec.guild_rank matches 7 run data modify storage evercraft:guild temp.rank_name set value "Valorous"

# Get contribution
execute store result storage evercraft:guild temp.member_contrib int 1 run scoreboard players get @s ec.guild_contrib

# Store unique member ID for selector in text_display
# Use displayed index + 100 as unique score identifier
scoreboard players operation @s ec.temp = #guild_displayed ec.temp
scoreboard players add @s ec.temp 100
execute store result storage evercraft:guild temp.member_score int 1 run scoreboard players get @s ec.temp

# Spawn row at correct Y offset (row 0 = +0.40, each row -0.13)
execute if score #guild_displayed ec.temp matches 0 at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~ ~0.40 ~-0.02 run function evercraft:guild/gui/menu/spawn_member_row with storage evercraft:guild temp
execute if score #guild_displayed ec.temp matches 1 at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~ ~0.27 ~-0.02 run function evercraft:guild/gui/menu/spawn_member_row with storage evercraft:guild temp
execute if score #guild_displayed ec.temp matches 2 at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~ ~0.14 ~-0.02 run function evercraft:guild/gui/menu/spawn_member_row with storage evercraft:guild temp
execute if score #guild_displayed ec.temp matches 3 at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~ ~0.01 ~-0.02 run function evercraft:guild/gui/menu/spawn_member_row with storage evercraft:guild temp
execute if score #guild_displayed ec.temp matches 4 at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~ ~-0.12 ~-0.02 run function evercraft:guild/gui/menu/spawn_member_row with storage evercraft:guild temp
execute if score #guild_displayed ec.temp matches 5 at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~ ~-0.25 ~-0.02 run function evercraft:guild/gui/menu/spawn_member_row with storage evercraft:guild temp

# Copy member's companion.id to the new interaction for click identification
scoreboard players operation @e[type=interaction,tag=ec.gm_member_new,limit=1] companion.id = @s companion.id
tag @e[type=interaction,tag=ec.gm_member_new] remove ec.gm_member_new

scoreboard players add #guild_displayed ec.temp 1
scoreboard players add #guild_row ec.temp 1
