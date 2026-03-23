# Guidestone Menu — Execute core absorption
# Run as: the player with menu open

# Already primed? Show notification and stop
execute if data storage evercraft:guidestone {menu_ctx:{primed:1b}} run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.8 0.5
execute if data storage evercraft:guidestone {menu_ctx:{primed:1b}} run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"This guidestone has already broken through the barrier between dimensions.",color:"light_purple",italic:true}]

# Check for Ancient Netherite Core anywhere on the player using clear count 0 (reliable detection)
execute store success score #gs_has_core ec.gs_temp run clear @s minecraft:stick[custom_data~{ancient_netherite_core:1b}] 0
execute if score #gs_has_core ec.gs_temp matches 1 run return run function evercraft:guidestone/menu/do_absorb

# No core found
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"The guidestone seemingly can't pass the barrier... ",color:"gray",italic:true},{text:"this looks like a slot for something...",color:"dark_purple",italic:true}]
playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.8 0.5
