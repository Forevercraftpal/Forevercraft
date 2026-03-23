# Guild Menu — Add NPC rows from GuildNPCs[] storage
# Recursive: processes temp.npcs[0], removes it, recurses
# Uses same #guild_row / #guild_skip / #guild_displayed counters as player rows

# Nothing left to process
execute unless data storage evercraft:guild temp.npcs[0] run return 0

# Skip NPCs before current page
execute if score #guild_row ec.temp < #guild_skip ec.temp run scoreboard players add #guild_row ec.temp 1
execute if score #guild_row ec.temp < #guild_skip ec.temp run data remove storage evercraft:guild temp.npcs[0]
execute if score #guild_row ec.temp < #guild_skip ec.temp run return run function evercraft:guild/gui/menu/add_npc_row

# Cap at 6 rows per page
execute if score #guild_displayed ec.temp matches 6.. run scoreboard players add #guild_row ec.temp 1
execute if score #guild_displayed ec.temp matches 6.. run data remove storage evercraft:guild temp.npcs[0]
execute if score #guild_displayed ec.temp matches 6.. run return run function evercraft:guild/gui/menu/add_npc_row

# Read profession name for display
data modify storage evercraft:guild temp.npc_prof set from storage evercraft:guild temp.npcs[0].profession

# Spawn row at correct Y offset
execute if score #guild_displayed ec.temp matches 0 at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~ ~0.40 ~-0.02 run function evercraft:guild/gui/menu/spawn_npc_row with storage evercraft:guild temp
execute if score #guild_displayed ec.temp matches 1 at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~ ~0.27 ~-0.02 run function evercraft:guild/gui/menu/spawn_npc_row with storage evercraft:guild temp
execute if score #guild_displayed ec.temp matches 2 at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~ ~0.14 ~-0.02 run function evercraft:guild/gui/menu/spawn_npc_row with storage evercraft:guild temp
execute if score #guild_displayed ec.temp matches 3 at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~ ~0.01 ~-0.02 run function evercraft:guild/gui/menu/spawn_npc_row with storage evercraft:guild temp
execute if score #guild_displayed ec.temp matches 4 at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~ ~-0.12 ~-0.02 run function evercraft:guild/gui/menu/spawn_npc_row with storage evercraft:guild temp
execute if score #guild_displayed ec.temp matches 5 at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~ ~-0.25 ~-0.02 run function evercraft:guild/gui/menu/spawn_npc_row with storage evercraft:guild temp

scoreboard players add #guild_displayed ec.temp 1
scoreboard players add #guild_row ec.temp 1

# Remove processed entry and recurse
data remove storage evercraft:guild temp.npcs[0]
function evercraft:guild/gui/menu/add_npc_row
