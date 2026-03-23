# Guild Warp — Confirm teleport (second click)
# Macro arg: slot (0-5)
# @s = the interaction entity that was clicked

# Calculate which filtered index was clicked: (page-1)*6 + slot
$scoreboard players set #guild_warp_click ec.temp $(slot)
execute as @p[tag=ec.guild_in_menu,distance=..5,limit=1] run scoreboard players operation #guild_warp_pgoff ec.temp = @s ec.guild_warp_pg
scoreboard players remove #guild_warp_pgoff ec.temp 1
scoreboard players set #6 ec.temp 6
scoreboard players operation #guild_warp_pgoff ec.temp *= #6 ec.temp
scoreboard players operation #guild_warp_click ec.temp += #guild_warp_pgoff ec.temp

# Rebuild the filtered list (same filter as refresh_warp)
data modify storage evercraft:guild warp.working set from storage evercraft:guidestone registry
data modify storage evercraft:guild warp.filtered set value []
execute as @p[tag=ec.guild_in_menu,distance=..5,limit=1] store result storage evercraft:guild warp.filter_ctx.guild_id int 1 run scoreboard players get @s ec.guild_id

# Get source_id from nearest guild stone marker
scoreboard players set #guild_warp_src ec.temp 0
execute as @e[type=marker,tag=ec.guildstone,tag=ec.gs_registered,distance=..5,limit=1] store result score #guild_warp_src ec.temp run scoreboard players get @s ec.gs_id
execute store result storage evercraft:guild warp.filter_ctx.source_id int 1 run scoreboard players get #guild_warp_src ec.temp

function evercraft:guild/gui/menu/warp/filter with storage evercraft:guild warp.filter_ctx

# Skip to the clicked entry in filtered list
data modify storage evercraft:guild warp.tp_working set from storage evercraft:guild warp.filtered
scoreboard players operation #guild_warp_skip ec.temp = #guild_warp_click ec.temp
function evercraft:guild/gui/menu/warp/skip_to_entry

# Now warp.tp_target has the destination entry
# Determine if free or paid based on warp_free field
scoreboard players set #tp_free ec.gs_temp 0
execute if data storage evercraft:guild {warp:{tp_target:{warp_free:1b}}} run scoreboard players set #tp_free ec.gs_temp 1

# Store tp_target for the guidestone teleport system
data modify storage evercraft:guidestone tp_target set from storage evercraft:guild warp.tp_target

# Teleport the player (close guild menu, then teleport)
execute as @p[tag=ec.guild_in_menu,distance=..5,limit=1] run function evercraft:guild/gui/menu/warp/do_teleport with storage evercraft:guidestone tp_target
