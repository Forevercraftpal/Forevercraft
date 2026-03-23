# Happy Ghast — On Interact (right-click interaction entity)
# @s = player who clicked. Toggles sit/stand.

# Revoke for re-trigger
advancement revoke @s only evercraft:happy_ghast/interact_tamed

# Debounce
execute if entity @s[tag=ec.ghast_click_cd] run return fail
tag @s add ec.ghast_click_cd

# Skip if holding slime balls — let feeding take priority
execute if items entity @s weapon.mainhand slime_ball run return fail

# Find nearest owned tamed ghast and toggle sit
scoreboard players operation #ghast_search ghast.owner = @s ghast.owner
execute unless score @s ghast.owner matches 1.. run return fail

execute as @e[type=minecraft:happy_ghast,tag=ec.ghast_tamed,distance=..10,limit=1,sort=nearest] if score @s ghast.owner = #ghast_search ghast.owner run function evercraft:buddy/happy_ghast/toggle_sit

# Clear debounce next tick
schedule function evercraft:buddy/happy_ghast/clear_click_cd 1t
