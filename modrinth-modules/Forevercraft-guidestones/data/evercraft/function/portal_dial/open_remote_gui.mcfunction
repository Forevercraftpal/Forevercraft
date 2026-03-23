# Portal Dial — Open Remote Guidestone GUI
# Macro arg: hand ("mainhand" or "offhand")
# Run as: the player
# Opens the guidestone network menu as if standing at the bound guidestone

# Already in menu? Cancel
execute if entity @s[tag=ec.gs_in_menu] run return run tellraw @s [{text:"▊ ",color:"dark_purple"},{text:"You already have a menu open!",color:"red"}]

# Read binding data from the correct hand
$function evercraft:portal_dial/read_gs_bind_$(hand)

# Validate the guidestone still exists in registry (also reads live primed/dim/name)
data modify storage eden:temp pd_lookup set from storage evercraft:guidestone registry
scoreboard players set #pd_found ec.gs_temp 0
function evercraft:portal_dial/validate_gs_exists

# If not found in registry, the guidestone was destroyed
execute if score #pd_found ec.gs_temp matches 0 run return run tellraw @s [{text:"▊ ",color:"dark_purple"},{text:"The Guidestone your Portal Dial was bound to has been destroyed!",color:"red"}]

# Check if the guidestone is primed (uses LIVE data from registry, not cached on item)
execute unless data storage eden:temp {pd_remote:{live_primed:1b}} run return run tellraw @s [{text:"▊ ",color:"dark_purple"},{text:"This Guidestone hasn't been primed for interdimensional access. The remote network menu requires a ",color:"gray",italic:true},{text:"primed",color:"light_purple",italic:true},{text:" Guidestone.",color:"gray",italic:true}]

# --- Set up menu_ctx from live registry data ---
data modify storage evercraft:guidestone menu_ctx.dim set from storage eden:temp pd_remote.live_dim
data modify storage evercraft:guidestone menu_ctx.primed set from storage eden:temp pd_remote.live_primed
execute store result storage evercraft:guidestone menu_ctx.source_id int 1 run scoreboard players get #pd_remote_id ec.gs_temp

# Mark this as a remote menu session (tick skips distance-from-guidestone check)
tag @s add ec.gs_remote_menu

# Open the standard guidestone menu (will detect ec.gs_remote_menu and skip marker lookups)
execute at @s run function evercraft:guidestone/menu/open

# Sound (distinct from in-person menu)
playsound minecraft:block.portal.ambient master @s ~ ~ ~ 0.3 1.5
