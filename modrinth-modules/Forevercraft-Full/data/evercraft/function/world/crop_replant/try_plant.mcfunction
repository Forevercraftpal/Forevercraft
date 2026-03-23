# Crop Seed Auto-Replant — Try to plant this seed item
# Run as item entity at its position
# Scans within 2 blocks for farmland/soul_sand and plants the crop above it
# Uses 'keep' mode so setblock only succeeds if the target is air

scoreboard players set #planted ec.temp 0

# Map seed → crop block and soil type in storage
execute if data entity @s {Item:{id:"minecraft:wheat_seeds"}} run data modify storage evercraft:crop_replant crop set value {block:"minecraft:wheat[age=0]",soil:"farmland"}
execute if data entity @s {Item:{id:"minecraft:carrot"}} run data modify storage evercraft:crop_replant crop set value {block:"minecraft:carrots[age=0]",soil:"farmland"}
execute if data entity @s {Item:{id:"minecraft:potato"}} run data modify storage evercraft:crop_replant crop set value {block:"minecraft:potatoes[age=0]",soil:"farmland"}
execute if data entity @s {Item:{id:"minecraft:beetroot_seeds"}} run data modify storage evercraft:crop_replant crop set value {block:"minecraft:beetroots[age=0]",soil:"farmland"}
execute if data entity @s {Item:{id:"minecraft:melon_seeds"}} run data modify storage evercraft:crop_replant crop set value {block:"minecraft:melon_stem[age=0]",soil:"farmland"}
execute if data entity @s {Item:{id:"minecraft:pumpkin_seeds"}} run data modify storage evercraft:crop_replant crop set value {block:"minecraft:pumpkin_stem[age=0]",soil:"farmland"}
execute if data entity @s {Item:{id:"minecraft:torchflower_seeds"}} run data modify storage evercraft:crop_replant crop set value {block:"minecraft:torchflower_crop[age=0]",soil:"farmland"}
execute if data entity @s {Item:{id:"minecraft:pitcher_pod"}} run data modify storage evercraft:crop_replant crop set value {block:"minecraft:pitcher_crop[age=0]",soil:"farmland"}
execute if data entity @s {Item:{id:"minecraft:nether_wart"}} run data modify storage evercraft:crop_replant crop set value {block:"minecraft:nether_wart[age=0]",soil:"soul_sand"}

# Scan nearby positions (2-block range) for suitable soil
function evercraft:world/crop_replant/scan with storage evercraft:crop_replant crop

# If planted, consume one seed and show feedback
execute if score #planted ec.temp matches 1 run function evercraft:world/crop_replant/consume_one
