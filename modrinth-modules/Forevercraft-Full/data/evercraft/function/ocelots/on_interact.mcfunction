# Tamable Ocelot — On Interact (right-click interaction entity overlapping tamed ocelot)
# Runs as the player who clicked. Toggles sit/stand.

# Revoke for re-trigger
advancement revoke @s only evercraft:ocelots/interact_tamed

# Debounce — skip if already processed this tick
execute if entity @s[tag=ec.ocelot_click_cd] run return 0
tag @s add ec.ocelot_click_cd

# Skip if holding fish — let on_feed handle taming/breeding instead
execute if items entity @s weapon.mainhand cod run return 0
execute if items entity @s weapon.mainhand salmon run return 0

# Find the nearest owned tamed ocelot and toggle sit
scoreboard players operation #ocelot_search ocelot.owner = @s ocelot.owner
execute unless score @s ocelot.owner matches 1.. run return 0

execute as @e[type=ocelot,tag=ec.ocelot_tamed,predicate=evercraft:ocelots/check_ocelot_owner,distance=..5,limit=1,sort=nearest] run function evercraft:ocelots/toggle_sit

# Clear debounce next tick
schedule function evercraft:ocelots/clear_click_cd 1t
