# Guidestone Menu — Perform the core absorption and prime the guidestone
# Run as: the player with menu open (core confirmed in inventory)

# Consume 1 core from the player (clear command reliably matches the 1b variant)
clear @s minecraft:stick[custom_data~{ancient_netherite_core:1b}] 1

# Set primed flag on the marker entity
execute as @e[type=marker,tag=ec.gs_registered,distance=..5,limit=1,sort=nearest] run data modify entity @s data.primed set value 1b

# Get the marker's ID for registry update
execute store result score #gs_prime_id ec.gs_temp run scoreboard players get @e[type=marker,tag=ec.gs_registered,distance=..5,limit=1,sort=nearest] ec.gs_id

# Update registry entry to primed
function evercraft:guidestone/registry_set_primed

# Update menu_ctx to reflect primed state
data modify storage evercraft:guidestone menu_ctx.primed set value 1b

# Feedback
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"The Ancient Netherite Core ",color:"light_purple"},{text:"shatters",color:"red",bold:true},{text:" \u2014 interdimensional pathways are now open!",color:"light_purple"}]

# Sounds
playsound minecraft:block.beacon.activate master @a[distance=..16] ~ ~ ~ 1 0.8
playsound minecraft:block.end_portal.spawn master @a[distance=..16] ~ ~ ~ 0.5 1.5

# Particles (at the guidestone marker)
execute at @e[type=marker,tag=ec.gs_registered,distance=..5,limit=1,sort=nearest] run particle minecraft:reverse_portal ~0.5 ~1.2 ~0.5 0.3 0.8 0.3 0.05 80
execute at @e[type=marker,tag=ec.gs_registered,distance=..5,limit=1,sort=nearest] run particle minecraft:portal ~0.5 ~1.5 ~0.5 0.5 0.5 0.5 0.3 60
execute at @e[type=marker,tag=ec.gs_registered,distance=..5,limit=1,sort=nearest] run particle minecraft:enchant ~0.5 ~1.5 ~0.5 0.5 0.5 0.5 0.5 40

# Refresh the page to update the key icon to green checkmark
function evercraft:guidestone/menu/refresh
