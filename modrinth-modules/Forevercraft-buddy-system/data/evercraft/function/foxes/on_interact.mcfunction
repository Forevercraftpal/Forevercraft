# Tamable Fox — On Interact (right-click interaction entity overlapping tamed fox)
# Runs as the player who clicked. Toggles sit/stand.

# Revoke for re-trigger
advancement revoke @s only evercraft:foxes/interact_tamed

# Debounce — skip if already processed this tick
execute if entity @s[tag=ec.fox_click_cd] run return 0
tag @s add ec.fox_click_cd

# Skip if holding sweet berries — let on_feed handle taming/breeding instead
execute if items entity @s weapon.mainhand sweet_berries run return 0

# Find the nearest owned tamed fox and toggle sit
scoreboard players operation #fox_search fox.owner = @s fox.owner
execute unless score @s fox.owner matches 1.. run return 0

execute as @e[type=fox,tag=ec.fox_tamed,predicate=evercraft:foxes/check_fox_owner,distance=..5,limit=1,sort=nearest] run function evercraft:foxes/toggle_sit

# Clear debounce next tick
schedule function evercraft:foxes/clear_click_cd 1t
