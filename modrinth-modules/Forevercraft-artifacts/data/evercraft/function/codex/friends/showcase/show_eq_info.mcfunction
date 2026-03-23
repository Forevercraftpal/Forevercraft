# Showcase — Show equipment item info in chat (macro)
# $(slot) = tag of the item_display entity (e.g. "ec.sc_eq_0")
# $(label) = slot name (e.g. "Weapon", "Helmet")
# @s = viewing player

# Empty slot — early return
$execute if data entity @e[type=item_display,tag=$(slot),limit=1,sort=nearest,distance=..5] {item:{id:"minecraft:air"}} run tellraw @s [{text:"  $(label): ",color:"gray"},{text:"Empty",color:"dark_gray",italic:true}]
$execute if data entity @e[type=item_display,tag=$(slot),limit=1,sort=nearest,distance=..5] {item:{id:"minecraft:air"}} run return run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.3 1.4

# Artifact — show full ability description and early return
$execute if data entity @e[type=item_display,tag=$(slot),limit=1,sort=nearest,distance=..5] item.components."minecraft:custom_data".is_artifact run data modify storage evercraft:temp showcase.artifact set from entity @e[type=item_display,tag=$(slot),limit=1,sort=nearest,distance=..5] item.components."minecraft:custom_data".artifact
$execute if data entity @e[type=item_display,tag=$(slot),limit=1,sort=nearest,distance=..5] item.components."minecraft:custom_data".is_artifact run data modify storage evercraft:temp showcase.tier set from entity @e[type=item_display,tag=$(slot),limit=1,sort=nearest,distance=..5] item.components."minecraft:custom_data".tier
$execute if data entity @e[type=item_display,tag=$(slot),limit=1,sort=nearest,distance=..5] item.components."minecraft:custom_data".is_artifact run return run function evercraft:codex/friends/showcase/show_ability with storage evercraft:temp showcase

# Non-artifact item — show name + lore
$tellraw @s [{text:"  ",color:"dark_gray"},{text:"$(label): ",color:"gray"},{nbt:"item.components.\"minecraft:custom_name\"",entity:"@e[type=item_display,tag=$(slot),limit=1,sort=nearest,distance=..5]",interpret:true}]
$execute if data entity @e[type=item_display,tag=$(slot),limit=1,sort=nearest,distance=..5] item.components."minecraft:lore" run tellraw @s [{text:"    ",color:"dark_gray"},{nbt:"item.components.\"minecraft:lore\"[0]",entity:"@e[type=item_display,tag=$(slot),limit=1,sort=nearest,distance=..5]",interpret:true}]

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.3 1.4
